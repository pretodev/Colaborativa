import 'package:colaborativa_app/domain/failure.dart';
import 'package:modx/modx.dart';

import '../domain/auth/phone_status.dart';
import '../domain/user/user.dart';

class AppStore {
  final rxPhoneStatus = Rxn<PhoneStatus>();
  final rxUserRegistered = Rxn<UserRegistered>();
  final rxUserUnregistered = Rxn<UserUnregistered>();
  final _rxAuthError = Rxn<Failure>();

  PhoneStatus? get phoneStatus => rxPhoneStatus.value;
  set phoneStatus(PhoneStatus? value) => rxPhoneStatus.value = value;

  UserRegistered? get userRegistered => rxUserRegistered.value;
  set userRegistered(UserRegistered? value) => rxUserRegistered.value = value;

  UserUnregistered? get userUnregistered => rxUserUnregistered.value;
  set userUnregistered(UserUnregistered? value) =>
      rxUserUnregistered.value = value;

  Failure? get authError => _rxAuthError.value;
  set authError(Failure? value) => _rxAuthError.value = value;
  void clearAuthError() => _rxAuthError.value = null;
  RxInterface get rxAuthError => _rxAuthError;
}
