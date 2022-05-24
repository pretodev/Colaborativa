import '../../modules/activities/core/models/activity.dart';

abstract class ActivityRepository {
  Future<List<Activity>> allActivities(String userId);

  Future<void> checkActivity(Activity activity, String userId);
}
