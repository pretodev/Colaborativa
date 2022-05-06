import 'package:colaborativa_app/domain/chat/editing_message.dart';
import 'package:colaborativa_app/domain/chat/message_repository.dart';

class SendMessage {
  final MessageRepository _messageRepository;

  SendMessage({
    required MessageRepository messageRepository,
  }) : _messageRepository = messageRepository;

  Future<void> call(EditingMessage message) {
    return _messageRepository.sendMessage(message);
  }
}
