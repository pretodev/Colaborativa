import '../../modules/activities/core/models/activity.dart';
import '../../domain/activities/activity_repository.dart';

class GetActivities {
  final ActivityRepository _activityRepository;

  GetActivities({
    required ActivityRepository activityRepository,
  }) : _activityRepository = activityRepository;

  Future<List<Activity>> call({
    required String userId,
  }) {
    return _activityRepository.allActivities(userId);
  }
}
