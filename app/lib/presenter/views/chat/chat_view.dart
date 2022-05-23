import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../../widgets/page_body.dart';
import 'chat_controller.dart';
import 'chat_store.dart';
import 'widgets/chat_message.dart';

class ChatView extends ModxView<ChatController, ChatStore> {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mensagens'),
        centerTitle: true,
      ),
      body: Obx(
        () => PageBody(
          child: Column(
            children: [
              store.rxMessages.map(
                state: (messages) {
                  return Expanded(
                    child: ListView.builder(
                      controller: controller.chatList,
                      reverse: true,
                      itemCount: messages.length,
                      itemBuilder: (_, index) {
                        final message = messages[index];
                        final emitterId = message.emitter.id;
                        return ChatMessage(
                          message: message,
                          isAvatarVisible: index == 0 ||
                              emitterId != messages[index - 1].emitter.id,
                          isNameVisible: index == messages.length - 1 ||
                              emitterId != messages[index + 1].emitter.id,
                        );
                      },
                    ),
                  );
                },
                error: (_) => const SizedBox(),
                waiting: () => const SizedBox(),
              ),
              const SizedBox(height: 16),
              TextField(
                onTap: controller.showInputModal,
                readOnly: true,
                decoration: const InputDecoration(
                  hintText: 'Escreva algo para a comunidade...',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
