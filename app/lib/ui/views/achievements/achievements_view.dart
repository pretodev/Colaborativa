import 'package:colaborativa_app/core/entities/achievement.dart';
import 'package:colaborativa_app/ui/views/achievements/widgets/achievement_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/achievement_service.dart';

class AchievementsView extends StatelessWidget {
  const AchievementsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final achievementService = context.read<AchievementService>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conquistas'),
        centerTitle: true,
      ),
      body: StreamBuilder<List<Achievement>>(
        stream: achievementService.achievements,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox();
          }
          print(snapshot.data);
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final achievement = snapshot.data![index];
              return AchievementCardWidget(achievement: achievement);
            },
          );
        },
      ),
    );
  }
}
