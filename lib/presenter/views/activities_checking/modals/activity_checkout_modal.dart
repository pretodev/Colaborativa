import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modx/modx.dart';

import '../../../../domain/activities/activity.dart';
import '../activities_checking_controller.dart';
import '../activities_checking_store.dart';

class ActivityCheckModal
    extends ModxModal<ActivitiesCheckingController, ActivitiesCheckingStore> {
  @override
  Widget buildView(BuildContext context, args) {
    final theme = Theme.of(context);
    final activity = args as Activity;
    return Container(
      height: 425,
      width: double.maxFinite,
      padding: const EdgeInsets.all(22),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.network(
            activity.iconUrl,
            height: 50.0,
            width: 50.0,
            semanticsLabel: 'A shark?!',
          ),
          const SizedBox(height: 16.0),
          Text(
            activity.name,
            textAlign: TextAlign.center,
            style: theme.textTheme.headline6,
          ),
          const SizedBox(height: 16.0),
          Expanded(child: Text(activity.description)),
          const SizedBox(height: 16.0),
          if (activity.lastChecking != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(activity.lastChecking.toString()),
            ),
          ElevatedButton(
            child: const Text('Marcar como feito'),
            onPressed: () async {
              await controller.checkActivity(activity);
              close();
            },
          )
        ],
      ),
    );
  }
}
