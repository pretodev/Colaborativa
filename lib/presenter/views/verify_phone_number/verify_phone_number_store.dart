import 'package:modx/modx.dart';

class VerifyPhoneNumberStore {
  final rxError = Rxn<Exception>();
  final rxPhoneNumberChecking = RxBool(false);

  Exception? get error => rxError.value;
  bool get isPhoneNumberChecking => rxPhoneNumberChecking.value;
}
