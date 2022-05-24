import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../presenter/theme/colors.dart';
import '../../../../presenter/widgets/custom_box.dart';
import '../../core/activities_repository.dart';
import '../../core/models/activity.dart';
import '../actvities_details/activity_details_view.dart';
import 'widgets/activity_card.dart';

class ActivitiesView extends StatelessWidget {
  const ActivitiesView({Key? key}) : super(key: key);

  void showActiviyCheckout(BuildContext context, Activity activity) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ActivityDetailsView(activity: activity);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final activitiesRepo = context.read<ActivitiesRepository>();
    return StreamBuilder<List<Activity>>(
        stream: activitiesRepo.activities,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox();
          }
          final activities = snapshot.data ?? [];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Sua rotina',
                  style: theme.textTheme.headline6?.copyWith(
                    color: AppColors.primaryDark,
                  ),
                ),
              ),
              Visibility(
                visible: activities.isNotEmpty,
                replacement: const CustomBox(
                  margin: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text('Todas atividades foram concluidas, parabéns!'),
                ),
                child: SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: activities.length,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    itemBuilder: (context, index) {
                      final activity = activities[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: ActivityCard(
                          activity: activity,
                          onClicked: () =>
                              showActiviyCheckout(context, activity),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          );
        });
  }
}
