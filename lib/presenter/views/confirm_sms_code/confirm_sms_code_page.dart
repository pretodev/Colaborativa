import 'package:colaborativa_app/app/auth/clear_phone_number.dart';
import 'package:modx/modx.dart';

import '../../../app/auth/confirm_sms_code.dart';
import '../../../app/auth/send_phone_number.dart';
import '../../app_store.dart';
import '../../routes/routes.dart';
import 'confirm_sms_code_controller.dart';
import 'confirm_sms_code_store.dart';
import 'confirm_sms_code_view.dart';

class ConfirmSmsCodePage extends ModxPage<AppStore> {
  @override
  final route = Routes.confirmSmsCode;

  @override
  final view = const ConfirmSmsCodeView();

  @override
  void binding(i) {
    // Add others dependencies
    bind(SendPhoneNumber(phoneAuth: i()));
    bind(ConfirmSmsCode(phoneAuth: i()));
    bind(ClearPhoneNumber(phoneAuth: i()));
    bind(ConfirmSmsCodeStore(rxPhoneStatus: app.rxPhoneStatus));
    bind(ConfirmSmsCodeController(
      sendPhoneNumber: i(),
      confirmSmsCode: i(),
      clearPhoneNumber: i(),
    ));
  }
}
