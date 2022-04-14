import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../../theme/colors.dart';
import '../../widgets/custom_box.dart';
import 'activities_checking_controller.dart';
import 'activities_checking_store.dart';
import 'widgets/activity_card.dart';

class ActivitiesCheckingView
    extends ModxView<ActivitiesCheckingController, ActivitiesCheckingStore> {
  const ActivitiesCheckingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Obx(
      () => store.asyncActivities.transform((activities, status, error) {
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
                            controller.showActiviyCheckout(activity),
                      ),
                    );
                  },
                ),
              ),
              replacement: const CustomBox(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Todas atividades foram concluidas, parabéns!'),
              ),
            )
          ],
        );
      }),
    );
  }
}
