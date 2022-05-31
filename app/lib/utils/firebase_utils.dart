import 'package:cloud_firestore/cloud_firestore.dart';

extension DocumentSnapshotExtension on DocumentSnapshot<Map<String, dynamic>> {
  bool has(String key) {
    final map = data() ?? {};
    return map.containsKey(key);
  }
}
