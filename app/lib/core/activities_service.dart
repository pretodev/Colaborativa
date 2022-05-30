import 'package:dio/dio.dart';
import 'package:firebase_database/firebase_database.dart';

import '../utils/date/date_utils.dart';
import 'entities/activity.dart';

class ActivitiesServices {
  ActivitiesServices(
    String id, {
    required FirebaseDatabase database,
    required Dio colaborativaApi,
  })  : _db = database,
        _userId = id,
        _colaborativaApi = colaborativaApi;

  final FirebaseDatabase _db;
  final String _userId;
  final Dio _colaborativaApi;

  Future<void> checkActivity(Activity activity) async {
    await _colaborativaApi.post('/check-activity', data: {
      'activityId': activity.id,
    });
  }

  Stream<List<Activity>> get activities {
    final ref = _db.ref('users/$_userId/activities/$todayKey');
    return ref.onValue.asyncMap((event) async {
      final activitiesSnap =
          await FirebaseDatabase.instance.ref('activities').get();
      final activities =
          activitiesSnap.children.map(_fromDataSnapshot).toList();
      final activitiesLists = <Activity>[];
      for (var i = 0; i < activities.length; i++) {
        final value = event.snapshot.child('$i').value as bool?;
        if (value == null) {
          activitiesLists.add(activities[i]);
        }
      }

      return activitiesLists;
    });
  }
}

const _fieldName = 'name';
const _fieldIconUrl = 'icon_url';
const _fieldDescription = 'description';

Activity _fromDataSnapshot(DataSnapshot snapshot) {
  final map = snapshot.value as Map;
  return Activity(
    id: snapshot.key!,
    name: map[_fieldName],
    description: map[_fieldDescription],
    iconUrl: map[_fieldIconUrl],
  );
}
