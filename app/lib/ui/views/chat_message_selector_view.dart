import 'package:colaborativa_app/ui/theme/colors.dart';

import '../controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/enums/message_types_enum.dart';
import '../widgets/dropdown_field.dart';
import '../widgets/page_body.dart';

class ChatMessageSelectorView extends StatefulWidget {
  const ChatMessageSelectorView({
    Key? key,
    required this.messageType,
  }) : super(key: key);

  final MessageTypesEnum messageType;

  @override
  State<ChatMessageSelectorView> createState() =>
      _ChatMessageSelectorViewState();
}

class _ChatMessageSelectorViewState extends State<ChatMessageSelectorView> {
  int? msgIndexValue;
  set msgIndex(int? value) => setState(() => msgIndexValue = value);

  String receveiverValue = '@todos';
  set receiver(String value) => setState(() => receveiverValue = value);

  void selectReceiver(String? value) {
    msgIndex = null;
    receiver = value ?? '@todos';
  }

  void selectMessage(int index) {
    msgIndex = index != msgIndexValue ? index : null;
  }

  void sendMessage() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final config = context.read<AppController>().config;
    final messageKey = receveiverValue == '@todos'
        ? widget.messageType.allSuggestionKey
        : widget.messageType.individualSuggestionKey;
    final suggestions = config.chatSSuggestions[messageKey] ?? [];
    const titles = {
      MessageTypesEnum.support: 'Mensagems para Apoiar',
      MessageTypesEnum.incentive: 'Mensagens para Incentivar',
      MessageTypesEnum.acknowledgment: 'Mensagens de Agradecimento',
    };
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[widget.messageType] ?? ''),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: PageBody(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownField<String>(
              value: receveiverValue,
              onChanged: selectReceiver,
              decoration: const InputDecoration(
                prefixText: 'Para:',
              ),
              items: const [
                DropdownFieldItem<String>(
                  value: '@todos',
                  label: '@todos',
                ),
                DropdownFieldItem<String>(
                  value: 'vanessa',
                  label: '@Vanessa',
                ),
                DropdownFieldItem<String>(
                  value: 'silas',
                  label: '@Silas',
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: suggestions.length,
                itemBuilder: (context, index) {
                  final selected = index == msgIndexValue;
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: selected ? AppColors.primaryLight : null,
                    ),
                    child: ListTile(
                      title: Text(suggestions[index]),
                      trailing: selected ? const Icon(Icons.check) : null,
                      onTap: () => selectMessage(index),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: msgIndexValue != null ? () {} : null,
              child: const Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
