import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../chat_controller.dart';
import '../chat_store.dart';

class ChatInputModal extends ModxModal<ChatController, ChatStore> {
  @override
  final shape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(20),
    ),
  );

  @override
  final isScrollControlled = true;

  @override
  Widget buildView(BuildContext context, args) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      height: 278.0,
      margin: mediaQueryData.viewInsets,
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              expands: true,
              controller: controller.editor,
              decoration: const InputDecoration(
                hintText: 'Escreva algo para a comunidade...',
                fillColor: Colors.transparent,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          ElevatedButton(
            child: const Text('Enviar'),
            onPressed: controller.sendMessage,
          )
        ],
      ),
    );
  }
}
