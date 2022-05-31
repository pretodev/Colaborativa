import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import '../utils/date/date_utils.dart';
import 'entities/rank_user.dart';
import 'enums/period_enum.dart';

class ScoreService {
  final _db = FirebaseDatabase.instance;
  final _userId = FirebaseAuth.instance.currentUser!.uid;

  Stream<int> get score {
    return _db
        .ref('score/day/$todayKey/$_userId/total')
        .onValue
        .map((event) => event.snapshot.value as int);
  }

  Future<List<RankUser>> fromPeriod(PeriodEnum period) async {
    final snap = await _db.ref('score/${period.path}').get();
    if (snap.value == null) return [];
    final result = snap.value as Map;
    return result.values.map<RankUser>((value) {
      final name = value['name'] as String;
      final score = value['total'] as int;
      return RankUser(name: name, score: score);
    }).toList();
  }
}
