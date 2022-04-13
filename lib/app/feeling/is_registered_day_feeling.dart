import '../../domain/feeling/feeling_repository.dart';

class IsRegisteredDayFeeling {
  final FeelingRepository _feelingRepository;

  IsRegisteredDayFeeling({
    required FeelingRepository feelingRepository,
  }) : _feelingRepository = feelingRepository;

  Future<bool> call(String userId) {
    return _feelingRepository.isFeelingDiarySaved(userId: userId);
  }
}
