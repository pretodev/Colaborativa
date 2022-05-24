import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import '../utils/date/date_utils.dart';
import 'entities/activity.dart';

class ActivitiesServices {
  final _db = FirebaseDatabase.instance;
  final _userId = FirebaseAuth.instance.currentUser!.uid;

  Stream<List<Activity>> get activities {
    final ref = _db.ref('users/$_userId/activities/${DateUtils.todayKey}');
    return ref.onValue.asyncMap((event) async {
      final activitiesSnap =
          await FirebaseDatabase.instance.ref('activities').get();
      final activities =
          activitiesSnap.children.map(_fromDataSnapshot).toList();
      final userActivies = event.snapshot.value as Map<String, dynamic>? ?? {};
      return activities
          .where((activity) => !userActivies.containsKey(activity.id))
          .toList();
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
