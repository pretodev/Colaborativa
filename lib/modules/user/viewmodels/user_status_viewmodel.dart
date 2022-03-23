import 'dart:async';

import 'package:mobx_triple/mobx_triple.dart';

import '../data/adapters/phone_auth.dart';
import '../data/adapters/user_datasource.dart';
import '../data/entities/user_status.dart';

class UserStatusViewmodel extends MobXStore<Exception, UserStatus> {
  final UserDatasource _userDatasource;
  final PhoneAuth _phoneAuth;

  UserStatusViewmodel({
    required UserDatasource userDatasource,
    required PhoneAuth phoneAuth,
  })  : _userDatasource = userDatasource,
        _phoneAuth = phoneAuth,
        super(const UserStatus.none());

  void checkStatus() {
    StreamSubscription? _phoneAuthSubscription;
    _userDatasource.user.listen(
      (user) {
        if (user == null) {
          _phoneAuthSubscription?.cancel();
          _phoneAuthSubscription = _mapPhoneStatus().listen(
            (phoneStatus) {
              update(phoneStatus);
            },
            onError: (e) => setError(e, force: true),
          );
          return;
        }
        _phoneAuthSubscription?.cancel();
        update(const UserStatus.authenticated());
      },
      onError: (e) => setError(e, force: true),
    );
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
