import 'package:firebase_database/firebase_database.dart';

import 'models/emitter.dart';
import 'models/message.dart';

class ChatService {
  final _db = FirebaseDatabase.instance;

  Stream<List<Message>> get messages {
    final messageRef = _db.ref('messages');
    return messageRef.onValue.map(
      (event) {
        final messages = event.snapshot.value as Map<String, dynamic>;
        return messages.keys.map((key) {
          final message = messages[key] as Map<String, dynamic>;
          return Message(
            id: key,
            content: message['content'],
            timestamp: DateTime.parse(message['timestamp'] as String),
            emitter: Emitter(
              id: message['emitter']['id'],
              name: message['emitter']['name'],
              photoUrl: message['emitter']['photo_url'],
            ),
          );
        }).toList();
      },
    );
  }
}

Message _fromDataSnapshot(DataSnapshot data) {
  final map = data.value as Map;
  final emitterMap = map['emitter'];
  return Message(
    id: data.key!,
    content: map['content'],
    timestamp: DateTime.fromMillisecondsSinceEpoch(map['timestamp']),
    emitter: Emitter(
      id: emitterMap['id'],
      name: emitterMap['name'],
      photoUrl: emitterMap['photo_url'],
    ),
  );
}
