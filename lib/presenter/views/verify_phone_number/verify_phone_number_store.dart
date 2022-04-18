import 'package:colaborativa_app/domain/failure.dart';
import 'package:colaborativa_app/presenter/app_store.dart';
import 'package:modx/modx.dart';

class VerifyPhoneNumberStore with ModxAppStoreMixin<AppStore> {
  final rxError = Rxn<Exception>();
  final rxPhoneNumberChecking = RxBool(false);

  Exception? get error => rxError.value;

  set phoneNumberChecking(bool value) => rxPhoneNumberChecking.value = value;
  bool get isPhoneNumberChecking => rxPhoneNumberChecking.value;

  Rxn<Failure> get rxAuthError => app.rxAuthError;
  Failure? get authError => rxAuthError.value;
}
