import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modx/modx.dart';

import '../../../../presenter/widgets/field_wrapper.dart';
import '../../../../utils/context_extension.dart';
import '../../core/entities/phone_preferences.dart';
import 'widgets/sms_instructions_widget.dart';

class ConfirmSmsCodeView extends StatefulWidget {
  const ConfirmSmsCodeView({Key? key}) : super(key: key);

  @override
  State<ConfirmSmsCodeView> createState() => _ConfirmSmsCodeViewState();
}

class _ConfirmSmsCodeViewState extends State<ConfirmSmsCodeView> {
  final _smsCodeController = TextEditingController();
  final _smsCodeFocus = FocusNode();

  var _isSmsCodeChecking = false;
  set isSmsCodeChecking(bool value) =>
      setState(() => _isSmsCodeChecking = value);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    final phonePreferences = context.args<PhonePreferences>();
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Obx(() {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Agora falta pouco!',
                  style: theme.textTheme.headline4,
                ),
                const SizedBox(height: 48.0),
                SmsInstructionsWidget(
                  phone: phonePreferences.phoneNumber,
                  onWrongNumberClicked: () {},
                  // onWrongNumberClicked:
                  //     store.isTimeout ? controller.resetPhoneNumber : null,
                ),
                const SizedBox(height: 48.0),
                FieldWrapper(
                  label: 'Digite o código de confirmação',
                  child: TextField(
                    maxLength: 6,
                    keyboardType: TextInputType.phone,
                    controller: _smsCodeController,
                    readOnly: _isSmsCodeChecking,
                    decoration: InputDecoration(
                      helperText: _isSmsCodeChecking
                          ? 'Verificando o código, aguarde por favor...'
                          : null,
                    ),
                    focusNode: _smsCodeFocus,
                  ),
                ),
                const Spacer(),
                // OutlinedButton(
                //   onPressed: store.isTimeout && !store.isSmsCodeRequesting
                //       ? controller.requestNewSmsCode
                //       : null,
                //   child: Text(
                //     store.isSmsCodeRequesting
                //         ? 'Solicitando novo codigo'
                //         : store.isTimeout
                //             ? 'Solicitar novo código'
                //             : 'Aguarde pelo menos ${store.timeoutSeconds} segundos',
                //     textAlign: TextAlign.center,
                //   ),
                // ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
