import 'package:firebase_database/firebase_database.dart';

import '../../modules/chat/core/models/emitter.dart';
import '../../modules/chat/core/models/message.dart';

class MessageMapper {
  static Message fromFirebase(DataSnapshot data) {
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
}
