import '../../domain/user/user_profile.dart';
import '../../domain/user/user_repository.dart';

class SaveProfile {
  final UserRepository _userRepository;

  SaveProfile({
    required UserRepository userRepository,
  }) : _userRepository = userRepository;

  Future<void> call(
    UserProfile profile, {
    required String userId,
  }) async {
    return _userRepository.save(profile: profile, userId: userId);
  }
}
