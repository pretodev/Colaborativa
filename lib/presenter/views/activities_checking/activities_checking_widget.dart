import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../../../app/activity/check_activity.dart';
import '../../../app/activity/get_activities.dart';
import '../../../domain/activities/activity_repository.dart';
import '../../../infra/firebase_activity_repository.dart';
import 'activities_checking_controller.dart';
import 'activities_checking_store.dart';
import 'activities_checking_view.dart';

class ActivitiesCheckingWidget extends ModxWidget {
  const ActivitiesCheckingWidget({Key? key}) : super(key: key);

  @override
  final view = const ActivitiesCheckingView();

  @override
  void binding(i) {
    // Add others dependencies
    bind<ActivityRepository>(FirebaseActivityRepository());
    bind(GetActivities(activityRepository: i()));
    bind(CheckActivity(activityRepository: i()));
    bind(ActivitiesCheckingStore());
    bind(ActivitiesCheckingController(getActivities: i(), checkActivity: i()));
  }
}
