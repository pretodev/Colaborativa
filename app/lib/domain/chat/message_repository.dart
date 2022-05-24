import '../../modules/chat/core/models/message.dart';
import 'editing_message.dart';

abstract class MessageRepository {
  const MessageRepository();

  Future<void> sendMessage(EditingMessage message);

  Future<void> moreMessages([int count]);

  Stream<List<Message>> messages();
}
