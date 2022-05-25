import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import 'entities/achievement.dart';

class AchievementService {
  final _db = FirebaseDatabase.instance;
  final _userId = FirebaseAuth.instance.currentUser!.uid;

  Stream<List<Achievement>> get achievements {
    final ref = _db.ref('users/$_userId/achievements');
    return ref.onValue.asyncMap((event) async {
      final achievementsSnap =
          await FirebaseDatabase.instance.ref('achievements').get();
      final achievements = achievementsSnap.children
          .map((data) => _fromDataSnapshot(data, event.snapshot))
          .toList();
      return achievements;
    });
  }
}

Achievement _fromDataSnapshot(DataSnapshot globalData, DataSnapshot userData) {
  final key = globalData.key!;
  final globalMap = globalData.value as Map;
  final maxLevel = globalData.child('levels').children.length;
  final userMap = userData.value as Map? ?? {};
  final userLevel = userMap[key]?['level'] as int? ?? 0;
  final userProgress = userMap[key]?['progress'] as int? ?? 0;
  final maxLevelProgress = globalMap['levels'][userLevel + 1] as int;
  return Achievement(
    id: key,
    maxLevel: maxLevel,
    description: globalMap['description'],
    userLevel: userLevel,
    userProgress: userProgress,
    maxLevelProgess: maxLevelProgress,
  );
}
