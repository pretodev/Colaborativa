import 'package:modx/modx.dart';

import '../../../domain/auth/phone_status.dart';
import '../../app_store.dart';

class ConfirmSmsCodeStore with ModxAppStoreMixin<AppStore> {
  final rxSmsCodeChecking = RxBool(false);
  final rxSmsCodeRequesting = RxBool(false);
  final rxTimeoutSeconds = RxInt(0);

  bool get isSmsCodeChecking => rxSmsCodeChecking.value;
  set smsCodeChecking(bool value) => rxSmsCodeChecking.value = value;

  bool get isSmsCodeRequesting => rxSmsCodeRequesting.value;
  set smsCodeRequesting(bool value) => rxSmsCodeRequesting.value = value;

  Rxn<PhoneStatus> get rxPhoneStatus => app.rxPhoneStatus;
  PhoneStatus get phoneStatus => app.rxPhoneStatus.value!;

  int get timeoutSeconds => rxTimeoutSeconds.value;
  set timeoutSeconds(int value) => rxTimeoutSeconds.value = value;
  bool get isTimeout => timeoutSeconds <= 0;
}
