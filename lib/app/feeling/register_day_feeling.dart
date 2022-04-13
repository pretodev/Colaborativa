import '../../domain/feeling/editing_feeling_diary.dart';
import '../../domain/feeling/feeling_repository.dart';

class RegisterDayFeeling {
  final FeelingRepository _feelingRepository;

  RegisterDayFeeling({required FeelingRepository feelingRepository})
      : _feelingRepository = feelingRepository;

  Future<void> call(
    EditingFeelingDiary feelingDiary, {
    required String userId,
  }) async {
    await _feelingRepository.save(feelingDiary, userId: userId);
  }
}
