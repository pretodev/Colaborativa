import 'package:firebase_database/firebase_database.dart';

import 'entities/emitter.dart';
import 'entities/message.dart';

class ChatService {
  final _db = FirebaseDatabase.instance;

  Stream<List<Message>> get messages {
    final messageRef = _db.ref('messages');
    return messageRef.onValue.map(
      (event) {
        return event.snapshot.children.map(_fromDataSnapshot).toList();
      },
    );
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
