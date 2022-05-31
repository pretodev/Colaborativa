import 'package:colaborativa_app/core/chat_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatInputView extends StatefulWidget {
  const ChatInputView({Key? key}) : super(key: key);

  @override
  State<ChatInputView> createState() => _ChatInputViewState();
}

class _ChatInputViewState extends State<ChatInputView> {
  late final ChatService chat;
  late final NavigatorState navigate;

  final editor = TextEditingController();

  void sendMessage() async {
    await chat.sendMessage(content: editor.text);
    navigate.pop();
  }

  @override
  void initState() {
    super.initState();
    navigate = Navigator.of(context);
    chat = context.read<ChatService>();
  }

  @override
  void dispose() {
    editor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              controller: editor,
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
            onPressed: () => sendMessage(),
            child: const Text('Enviar'),
          )
        ],
      ),
    );
  }
}
