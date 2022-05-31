import 'package:flutter/material.dart';

import '../../../../core/entities/rank_user.dart';
import '../../../theme/colors.dart';
import '../../../widgets/profile_avatar_widget.dart';
import 'rank_avatar_number_widget.dart';

class RankAvatarWidget extends StatelessWidget {
  static const avatarSize = 96.0;

  const RankAvatarWidget({
    Key? key,
    required this.number,
    required this.user,
  }) : super(key: key);

  final int number;
  final RankUser user;

  @override
  Widget build(BuildContext context) {
    const sizes = [96.0, 64.0, 48.0];
    const paddings = [0.0, 4.0, 8.0];
    final theme = Theme.of(context);
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Padding(
              padding: EdgeInsets.all(paddings[number - 1]),
              child: ProfileAvatarWidget(size: sizes[number - 1]),
            ),
            RankAvatarNumberWidget(number: number),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          user.name,
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyText1?.copyWith(
            color: AppColors.primaryDark,
          ),
        ),
        Text(
          '${user.score} pts',
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyText2,
        ),
      ],
    );
  }
}
