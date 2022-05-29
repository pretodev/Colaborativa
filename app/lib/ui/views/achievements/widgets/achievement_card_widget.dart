import 'package:flutter/material.dart';

import 'package:colaborativa_app/core/entities/achievement.dart';
import 'package:colaborativa_app/ui/widgets/custom_box.dart';

import '../../../theme/colors.dart';
import 'achievement_level_widget.dart';

class AchievementCardWidget extends StatelessWidget {
  const AchievementCardWidget({
    Key? key,
    required this.achievement,
  }) : super(key: key);

  final Achievement achievement;

  @override
  Widget build(BuildContext context) {
    final progress = achievement.userProgress / achievement.maxLevelProgess;
    final theme = Theme.of(context);
    return CustomBox(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AchievementLevelWidget(
            level: achievement.userLevel,
            maxLevel: achievement.maxLevel,
          ),
          const SizedBox(height: 16.0),
          Text(
            achievement.description,
            style: theme.textTheme.headline6?.copyWith(
              color: AppColors.secondary,
            ),
          ),
          const SizedBox(height: 12.0),
          Row(
            children: [
              Flexible(
                child: LinearProgressIndicator(
                  value: progress,
                  minHeight: 10.0,
                  backgroundColor: AppColors.backgroundDark,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(width: 8.0),
              Text(
                  '${achievement.userProgress}/${achievement.maxLevelProgess}'),
            ],
          ),
        ],
      ),
    );
  }
}
