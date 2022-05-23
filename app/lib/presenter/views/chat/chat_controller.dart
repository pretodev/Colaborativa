import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../../../app/chat/get_more_message.dart';
import '../../../app/chat/send_message.dart';
import '../../../app/chat/subscribe_messages.dart';
import '../../../domain/chat/editing_message.dart';
import '../../../domain/chat/emitter.dart';
import 'chat_store.dart';
import 'modals/chat_input_modal.dart';

class ChatController extends ModxController<ChatStore> {
  final SendMessage _sendMessage;
  final GetMoreMessage _getMoreMessage;
  final SubscribeMessages _subscribeMessages;

  ChatController({
    required SendMessage sendMessage,
    required GetMoreMessage getMoreMessage,
    required SubscribeMessages subscribeMessages,
  })  : _sendMessage = sendMessage,
        _getMoreMessage = getMoreMessage,
        _subscribeMessages = subscribeMessages;

  final chatInputModal = ChatInputModal();

  final editor = TextEditingController();

  final chatList = ScrollController();

  @override
  void onInit() {
    super.onInit();
    chatList.addListener(() {
      if (chatList.position.atEdge) {
        bool isBottom = chatList.position.pixels == 0;
        if (!isBottom) {
          getMoreMessages();
        }
      }
    });
    store.rxMessages.stream(_subscribeMessages());
  }

  void showInputModal() {
    chatInputModal.showBottomSheet();
  }

  void getMoreMessages() async {
    await _getMoreMessage();
    //store.rxMessages.done(messages.reversed.toList());
  }

  void sendMessage() async {
    final message = EditingMessage(
      content: editor.text,
      emitter: Emitter(
        id: store.user.id,
        name: store.user.name,
      ),
    );
    await _sendMessage(message);
    chatInputModal.close();
  }
}
