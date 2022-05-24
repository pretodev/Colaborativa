import '../../modules/activities/core/models/activity.dart';
import '../../domain/activities/activity_repository.dart';

class CheckActivity {
  final ActivityRepository _activityRepository;

  CheckActivity({
    required ActivityRepository activityRepository,
  }) : _activityRepository = activityRepository;

  Future<void> call({
    required Activity activity,
    required String userId,
  }) {
    return _activityRepository.checkActivity(activity, userId);
  }
}
