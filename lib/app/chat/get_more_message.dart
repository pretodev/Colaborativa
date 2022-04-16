import '../../domain/chat/message_repository.dart';

class GetMoreMessage {
  final MessageRepository _messageRepository;

  GetMoreMessage({
    required MessageRepository messageRepository,
  }) : _messageRepository = messageRepository;

  Future<void> call([count = 10]) {
    return _messageRepository.moreMessages(count);
  }
}
