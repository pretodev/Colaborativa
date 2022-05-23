import 'package:firebase_database/firebase_database.dart';

import '../../domain/activities/activity.dart';

class ActivityMapper {
  static const fieldName = 'name';
  static const fieldIconUrl = 'icon_url';
  static const fieldTimestamp = 'timestamp';
  static const fieldDescription = 'description';

  static Activity fromDataSnapshot(DataSnapshot snapshot) {
    final map = snapshot.value as Map;
    return Activity(
      id: snapshot.key!,
      name: map[fieldName],
      description: map[fieldDescription],
      iconUrl: map[fieldIconUrl],
    );
  }

  static Map<String, dynamic> toMap(Activity activity) {
    return {
      fieldName: activity.name,
      fieldTimestamp: ServerValue.timestamp,
      fieldDescription: '',
      fieldIconUrl: '',
    };
  }
}
