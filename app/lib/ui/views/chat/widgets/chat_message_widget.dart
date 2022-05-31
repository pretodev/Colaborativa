import 'package:colaborativa_app/utils/strings/strings.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

import '../../../../core/entities/message.dart';
import '../../../theme/colors.dart';
import 'chat_avatar.dart';

class ChatMessageWidget extends StatelessWidget {
  const ChatMessageWidget({
    Key? key,
    this.isNameVisible = true,
    this.isAvatarVisible = true,
    this.isMe = false,
    this.titleColor,
    required this.message,
  }) : super(key: key);

  final Message message;

  final bool isNameVisible;
  final bool isAvatarVisible;
  final bool isMe;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bg = isMe ? AppColors.backgroundMessage : AppColors.backgroundDark;
    final chatItems = [
      Visibility(
        visible: isAvatarVisible,
        replacement: const SizedBox(height: 32.0, width: 32.0),
        child: const ChatAvatar(),
      ),
      const SizedBox(width: 4.0),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Visibility(
              visible: !isMe && isNameVisible,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  message.emitter.name.capitalize,
                  style: theme.textTheme.bodyText2?.copyWith(
                    color: titleColor,
                  ),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 250.0),
              child: Text(
                message.content,
                style: theme.textTheme.bodyText2?.copyWith(color: Colors.black),
              ),
            ),
            const SizedBox(height: 4.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  Jiffy(message.timestamp).fromNow(),
                  style: theme.textTheme.bodyText2?.copyWith(fontSize: 12.0),
                ),
              ],
            ),
          ],
        ),
      ),
      const Spacer(),
    ];

    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: isMe ? chatItems.reversed.toList() : chatItems,
      ),
    );
  }
}
