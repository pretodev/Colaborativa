import 'editing_message.dart';
import 'message.dart';

abstract class MessageRepository {
  const MessageRepository();

  Future<void> sendMessage(EditingMessage message);

  Future<void> moreMessages([int count]);

  Stream<List<Message>> messages();
}
