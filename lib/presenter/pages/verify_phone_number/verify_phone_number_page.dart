import 'package:modx/modx.dart';

import '../../../app/auth/send_phone_number.dart';
import '../../routes/routes.dart';
import 'verify_phone_number_controller.dart';
import 'verify_phone_number_store.dart';
import 'verify_phone_number_view.dart';

class VerifyPhoneNumberPage extends ModxPage<VerifyPhoneNumberController> {
  @override
  final route = Routes.verifyPhoneNumber;

  @override
  final view = const VerifyPhoneNumberView();

  @override
  void binding(i) {
    // Add others dependencies
    bind(SendPhoneNumber(phoneAuth: i()));
    bind(VerifyPhoneNumberStore());
    bind(VerifyPhoneNumberController(
      sendPhoneNumber: i(),
    ));
  }
}
