import 'package:dio/dio.dart';
import 'package:firebase_database/firebase_database.dart';

import 'entities/emitter.dart';
import 'entities/message.dart';

class ChatService {
  ChatService({
    required FirebaseDatabase db,
    required Dio colaborativaApi,
  })  : _db = db,
        _colaborativaApi = colaborativaApi;

  final FirebaseDatabase _db;
  final Dio _colaborativaApi;

  Stream<List<Message>> get messages {
    final messageRef = _db.ref('messages');
    return messageRef.onValue.map(
      (event) {
        return event.snapshot.children.map(_fromDataSnapshot).toList();
      },
    );
  }

  Stream<Message> get onNewMessage {
    final messageRef = _db.ref('messages');
    return messageRef.onChildAdded.map(
      (event) => _fromDataSnapshot(event.snapshot),
    );
  }

  Stream<Message> get onRemoveMessage {
    final messageRef = _db.ref('messages');
    return messageRef.onChildRemoved.map(
      (event) => _fromDataSnapshot(event.snapshot),
    );
  }

  Future<List<Message>> last() async {
    final data = await _db.ref('messages').orderByChild('timestamp').get();
    return data.children.map(_fromDataSnapshot).toList();
  }

  Future<void> sendMessage({
    required String content,
    String destination = '@todos',
  }) async {
    await _colaborativaApi.post('/send-message', data: {
      'content': content,
      'destination': destination,
    });
  }
}

Message _fromDataSnapshot(DataSnapshot data) {
  final map = data.value as Map;
  return Message(
    id: data.key!,
    content: map['content'],
    timestamp: DateTime.parse(map['timestamp'] as String),
    emitter: Emitter(
      id: map['emitter']['id'],
      name: map['emitter']['name'],
      photoUrl: map['emitter']['photo_url'],
    ),
  );
}
