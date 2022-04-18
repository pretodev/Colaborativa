import 'package:colaborativa_app/domain/failure.dart';
import 'package:modx/modx.dart';

import '../domain/auth/phone_status.dart';
import '../domain/user/user.dart';

class AppStore {
  final rxPhoneStatus = Rxn<PhoneStatus>();
  final rxUserRegistered = Rxn<UserRegistered>();
  final rxUserUnregistered = Rxn<UserUnregistered>();
  final rxAuthError = Rxn<Failure>();

  PhoneStatus? get phoneStatus => rxPhoneStatus.value;
  set phoneStatus(PhoneStatus? value) => rxPhoneStatus.value = value;

  UserRegistered? get userRegistered => rxUserRegistered.value;
  set userRegistered(UserRegistered? value) => rxUserRegistered.value = value;

  UserUnregistered? get userUnregistered => rxUserUnregistered.value;
  set userUnregistered(UserUnregistered? value) =>
      rxUserUnregistered.value = value;

  Failure? get authError => rxAuthError.value;
  set authError(Failure? value) => rxAuthError.value = value;
}
