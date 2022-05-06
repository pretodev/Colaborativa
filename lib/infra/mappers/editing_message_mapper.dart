import 'package:colaborativa_app/domain/chat/editing_message.dart';
import 'package:firebase_database/firebase_database.dart';

class EditingMessageMapper {
  static Map<String, dynamic> toMap(EditingMessage message) {
    return {
      'content': message.content,
      'timestamp': ServerValue.timestamp,
      'emitter': {
        'id': message.emitter.id,
        'name': message.emitter.name,
        'photo_url': message.emitter.photoUrl,
      }
    };
  }
}
