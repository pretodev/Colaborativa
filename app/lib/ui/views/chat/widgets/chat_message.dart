import 'package:flutter/material.dart';

import '../../../../core/entities/message.dart';
import '../../../theme/colors.dart';
import 'chat_avatar.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({
    Key? key,
    this.isNameVisible = true,
    this.isAvatarVisible = true,
    required this.message,
  }) : super(key: key);

  final Message message;

  final bool isNameVisible;
  final bool isAvatarVisible;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Visibility(
            visible: isAvatarVisible,
            replacement: const SizedBox(height: 32.0, width: 32.0),
            child: const ChatAvatar(),
          ),
          const SizedBox(width: 4.0),
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
              decoration: BoxDecoration(
                color: AppColors.backgroundMessage,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: isNameVisible,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        message.emitter.name,
                        style: theme.textTheme.bodyText2,
                      ),
                    ),
                  ),
                  Text(
                    message.content,
                    style: theme.textTheme.bodyText2
                        ?.copyWith(color: Colors.black),
                  ),
                  const SizedBox(height: 4.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        message.timestamp.toString(),
                        style:
                            theme.textTheme.bodyText2?.copyWith(fontSize: 12.0),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
