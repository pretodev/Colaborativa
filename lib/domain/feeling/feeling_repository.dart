import 'editing_feeling_diary.dart';

abstract class FeelingRepository {
  const FeelingRepository();

  Future<void> save(
    EditingFeelingDiary feelingDiary, {
    required String userId,
  });

  Future<bool> isFeelingDiarySaved({
    required String userId,
  });
}
