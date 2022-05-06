import '../../domain/chat/message.dart';
import '../../domain/chat/message_repository.dart';

class SubscribeMessages {
  final MessageRepository _messageRepository;

  SubscribeMessages({
    required MessageRepository messageRepository,
  }) : _messageRepository = messageRepository;

  Stream<List<Message>> call() {
    return _messageRepository.messages();
  }
}
