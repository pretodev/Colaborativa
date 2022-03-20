import 'dart:async';

import '../adapters/phone_auth.dart';
import '../adapters/user_datasource.dart';
import '../entities/user_status.dart';

class CheckUserStatusCommand {
  final UserDatasource _userDatasource;
  final PhoneAuth _phoneAuth;

  StreamSubscription? _phoneAuthSubscription;

  CheckUserStatusCommand({
    required UserDatasource userDatasource,
    required PhoneAuth phoneAuth,
  })  : _userDatasource = userDatasource,
        _phoneAuth = phoneAuth;

  Stream<UserStatus> call() {
    final controller = StreamController<UserStatus>();
    _userDatasource.user.listen(
      (user) {
        if (user == null) {
          _phoneAuthSubscription?.cancel();
          _phoneAuthSubscription = _mapPhoneStatus().listen(
            controller.add,
            onError: controller.addError,
          );
          return;
        }
        _phoneAuthSubscription?.cancel();
        controller.add(const UserStatus.authenticated());
      },
      onError: controller.addError,
    );
    return controller.stream;
  }

  Stream<UserStatus> _mapPhoneStatus() async* {
    await _phoneAuth.loadPreferences();
    yield* _phoneAuth.status.map((status) {
      return status.maybeMap(
        waitingCode: (data) => UserStatus.waitingCode(data.preferences),
        success: (data) => const UserStatus.authenticated(),
        orElse: () => const UserStatus.unauthenticated(),
      );
    });
  }
}
