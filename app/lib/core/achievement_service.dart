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
  final globaKey = globalData.key!;
  final globalMap = globalData.value as Map;
  final levels = globalData.child('goals').value as List? ?? [];
  final userAchievement = userData.child(globaKey).value as Map?;

  var userLevel = 0;
  var userPoints = 0;
  if (userAchievement != null) {
    userLevel = userAchievement['level'] as int;
    userPoints = userAchievement['points'] as int;
  }

  return Achievement(
    id: globaKey,
    maxLevel: levels.length,
    description: globalMap['description'],
    userLevel: userLevel + 1,
    userProgress: userPoints,
    maxLevelProgess: levels[userLevel] as int,
  );
}
