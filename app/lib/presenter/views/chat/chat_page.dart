import 'package:modx/modx.dart';

import '../../../app/chat/get_more_message.dart';
import '../../../app/chat/send_message.dart';
import '../../../app/chat/subscribe_messages.dart';
import '../../../domain/chat/message_repository.dart';
import '../../../infra/firebase_message_repository.dart';
import '../../routes/routes.dart';
import 'chat_controller.dart';
import 'chat_store.dart';
import 'chat_view.dart';

class ChatPage extends ModxPage {
  @override
  final route = Routes.chat;

  @override
  final view = const ChatView();

  @override
  void binding(i) {
    // Add others dependencies
    bind<MessageRepository>(FirebaseMessageRepository());
    bind(GetMoreMessage(messageRepository: i()));
    bind(SendMessage(messageRepository: i()));
    bind(SubscribeMessages(messageRepository: i()));
    bind(ChatStore());
    bind(ChatController(
      sendMessage: i(),
      getMoreMessage: i(),
      subscribeMessages: i(),
    ));
  }
}
