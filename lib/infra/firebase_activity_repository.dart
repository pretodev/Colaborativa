import 'package:firebase_database/firebase_database.dart';

import '../domain/activities/activity.dart';
import '../domain/activities/activity_repository.dart';
import '../utils/date/date_utils.dart';
import 'mappers/activity_mapper.dart';

class FirebaseActivityRepository implements ActivityRepository {
  final _db = FirebaseDatabase.instance;

  @override
  Future<List<Activity>> allActivities(String userId) async {
    final snapshot = await FirebaseDatabase.instance.ref('activities').get();
    final activities =
        snapshot.children.map(ActivityMapper.fromDataSnapshot).toList();

    final userSnapshot =
        await _db.ref('users/$userId/activities/${DateUtils.todayKey}').get();
    final userActivities =
        userSnapshot.children.map(ActivityMapper.fromDataSnapshot).toList();

    final map = <String, Activity>{};
    for (var el in activities) {
      map[el.id] = el;
    }
    for (var el in userActivities) {
      map.remove(el.id);
    }
    return map.values.toList();
  }

  @override
  Future<void> checkActivity(Activity activity, String userId) async {
    return _db
        .ref('users/$userId/activities/${DateUtils.todayKey}/${activity.id}')
        .set(ActivityMapper.toMap(activity));
  }
}
