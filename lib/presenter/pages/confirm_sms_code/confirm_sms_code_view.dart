import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:modx/modx.dart';

import '../../widgets/field_wrapper.dart';
import 'confirm_sms_code_controller.dart';
import 'confirm_sms_code_store.dart';
import 'widgets/sms_instructions_widget.dart';

class ConfirmSmsCodeView
    extends ModxView<ConfirmSmsCodeController, ConfirmSmsCodeStore> {
  const ConfirmSmsCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
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
                  phone: store.phoneStatus.phoneNumber,
                  onWrongNumberClicked: controller.resetPhoneNumber,
                ),
                const SizedBox(height: 48.0),
                FieldWrapper(
                  label: 'Digite o código de confirmação',
                  child: TextField(
                    maxLength: 6,
                    keyboardType: TextInputType.phone,
                    controller: controller.smsCode,
                    decoration: InputDecoration(
                      errorText: store.isSmsCodeChecking
                          ? 'Verificando o código, aguarde por favor...'
                          : null,
                    ),
                    focusNode: controller.smsCodeFocus,
                  ),
                ),
                const Spacer(),
                OutlinedButton(
                  child: Text(
                    store.isSmsCodeRequesting
                        ? 'Solicitando novo codigo'
                        : store.isTimeout
                            ? 'Solicitar novo código'
                            : 'Aguarde pelo menos ${store.timeoutSeconds} segundos',
                    textAlign: TextAlign.center,
                  ),
                  onPressed: store.isTimeout && !store.isSmsCodeRequesting
                      ? controller.requestNewSmsCode
                      : null,
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
