import 'package:modx/modx.dart';

import '../../../domain/activities/activity.dart';

class ActivitiesCheckingStore {
  final asyncActivities = RxAsync<Exception, List<Activity>>([]);
}
