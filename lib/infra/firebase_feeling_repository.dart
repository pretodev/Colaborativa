import 'package:firebase_database/firebase_database.dart';

import '../domain/feeling/editing_feeling_diary.dart';
import '../domain/feeling/feeling_repository.dart';
import 'mappers/editing_feeling_diary_mapper.dart';

class FirebaseFeelingRepository extends FeelingRepository {
  final _db = FirebaseDatabase.instance;

  String get _currentFeelingKey {
    final today = DateTime.now();
    return '${today.year}_${today.month}_${today.day}';
  }

  @override
  Future<void> save(
    EditingFeelingDiary feelingDiary, {
    required String userId,
  }) async {
    await _db
        .ref('users/$userId/feelings/$_currentFeelingKey')
        .set(EditingFeelingDiaryMapper.toMap(feelingDiary));
  }

  @override
  Future<bool> isFeelingDiarySaved({required String userId}) async {
    final snap =
        await _db.ref('users/$userId/feelings/$_currentFeelingKey').get();
    return snap.exists;
  }
}
