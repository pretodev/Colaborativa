import '../../domain/auth/phone_auth_service.dart';
import '../../domain/user/user_repository.dart';

class Signout {
  final UserRepository _userRepository;
  final PhoneAuthService _phoneAuth;

  Signout({
    required UserRepository userRepository,
    required PhoneAuthService phoneAuth,
  })  : _userRepository = userRepository,
        _phoneAuth = phoneAuth;

  Future<void> call() async {
    await _phoneAuth.reset();
    await _userRepository.logout();
  }
}
