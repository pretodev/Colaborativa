import 'package:colaborativa_app/core/enums/message_types_enum.dart';
import 'package:flutter/material.dart';

class ChatMenuWidget extends StatelessWidget {
  const ChatMenuWidget({
    Key? key,
    required this.onItemClicked,
  }) : super(key: key);

  final void Function(MessageTypesEnum) onItemClicked;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(50),
      textStyle: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
    return Center(
      child: Column(
        children: [
          const Text(
            'Diga algo para comunidade',
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ElevatedButton(
                  style: buttonStyle,
                  child: const Text('Apoio'),
                  onPressed: () => onItemClicked(MessageTypesEnum.support),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  style: buttonStyle,
                  child: const Text('Agradecimento'),
                  onPressed: () =>
                      onItemClicked(MessageTypesEnum.acknowledgment),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ElevatedButton(
                  style: buttonStyle,
                  child: const Text('Lembretes'),
                  onPressed: () => onItemClicked(MessageTypesEnum.notification),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  style: buttonStyle,
                  child: const Text('Personalizado'),
                  onPressed: () => onItemClicked(MessageTypesEnum.custom),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
