import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:colaborativa_app/core/entities/user.dart';
import 'package:colaborativa_app/core/enums/message_types_enum.dart';
import 'package:dio/dio.dart';
import 'package:firebase_database/firebase_database.dart';

import 'entities/emitter.dart';
import 'entities/message.dart';

class ChatService {
  ChatService(
    this._userId, {
    required FirebaseDatabase db,
    required Dio colaborativaApi,
    required FirebaseFirestore firestore,
  })  : _db = db,
        _firestore = firestore,
        _colaborativaApi = colaborativaApi;

  final String _userId;
  final FirebaseDatabase _db;
  final FirebaseFirestore _firestore;
  final Dio _colaborativaApi;

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

  Future<List<User>> get destinations async {
    final users = await _firestore.collection('users').get();
    return users.docs
        .map((doc) => User(id: doc.id, name: doc.get('name')))
        .where((user) => user.id != _userId)
        .toList();
  }

  Future<void> sendMessage({
    required String content,
    String destination = '@todos',
    MessageTypesEnum type = MessageTypesEnum.none,
  }) async {
    await _colaborativaApi.post('/send-message', data: {
      'content': content,
      'to': destination,
      'type': type.name,
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
