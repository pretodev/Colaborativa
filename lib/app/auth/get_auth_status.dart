import 'dart:async';

import '../../domain/auth/auth_status.dart';
import '../../domain/auth/phone_auth_service.dart';
import '../../domain/user/user_repository.dart';

class GetAuthStatus {
  final UserRepository _userRepository;
  final PhoneAuthService _phoneAuth;

  GetAuthStatus({
    required UserRepository userRepository,
    required PhoneAuthService phoneAuth,
  })  : _userRepository = userRepository,
        _phoneAuth = phoneAuth;

  Stream<AuthStatus> call() {
    StreamSubscription? _phoneSub;
    return _userRepository.user.asyncExpand((user) async* {
      if (user == null) {
        yield* _phoneAuth.status.map((status) => status != null
            ? AuthStatus.waitingSmsCode(status)
            : const AuthStatus.unauthenticated());
        return;
      }
      _phoneSub?.cancel();
      yield user.map(
        unregistered: (unregistered) => AuthStatus.unregistered(unregistered),
        registered: (registered) => AuthStatus.authenticated(registered),
      );
    });
  }
}
