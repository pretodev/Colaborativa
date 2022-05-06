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

  final _controller = StreamController<AuthStatus>();

  Stream<AuthStatus> call() {
    StreamSubscription? phoneSub;
    final sub = _userRepository.user.listen(
      (user) async {
        if (user == null) {
          phoneSub = _phoneAuth.status.listen(
            (status) => status != null
                ? _controller.add(AuthStatus.waitingSmsCode(status))
                : _controller.add(const AuthStatus.unauthenticated()),
            onError: _controller.addError,
          );
          return;
        }
        await phoneSub?.cancel();

        user.map(
          unregistered: (unregistered) => _controller.add(
            AuthStatus.unregistered(unregistered),
          ),
          registered: (registered) => _controller.add(
            AuthStatus.authenticated(registered),
          ),
        );
      },
      onError: _controller.addError,
    );

    _controller.onCancel = () {
      phoneSub?.cancel();
      sub.cancel();
    };

    return _controller.stream;
  }
}
