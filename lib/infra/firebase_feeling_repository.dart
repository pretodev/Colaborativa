import 'package:firebase_database/firebase_database.dart';

import '../domain/feeling/editing_feeling_diary.dart';
import '../domain/feeling/feeling_repository.dart';
import '../utils/date/date_utils.dart';
import 'mappers/editing_feeling_diary_mapper.dart';

class FirebaseFeelingRepository extends FeelingRepository {
  final _db = FirebaseDatabase.instance;

  @override
  Future<void> save(
    EditingFeelingDiary feelingDiary, {
    required String userId,
  }) async {
    await _db
        .ref('users/$userId/feelings/${DateUtils.todayKey}')
        .set(EditingFeelingDiaryMapper.toMap(feelingDiary));
  }

  @override
  Future<bool> isFeelingDiarySaved({required String userId}) async {
    final snap =
        await _db.ref('users/$userId/feelings/${DateUtils.todayKey}').get();
    return snap.exists;
  }
}
