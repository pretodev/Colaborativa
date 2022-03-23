import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../app/widgets/field_wrapper.dart';
import '../../data/entities/phone_preferences.dart';
import '../../viewmodels/viewmodels.dart';
import '../controllers/timeout_controller.dart';
import '../widgets/sms_instructions_widget.dart';

class ConfirmCodePage extends StatefulWidget {
  const ConfirmCodePage({
    Key? key,
    required this.preferences,
  }) : super(key: key);

  final PhonePreferences preferences;

  @override
  State<ConfirmCodePage> createState() => _ConfirmCodePageState();
}

class _ConfirmCodePageState extends State<ConfirmCodePage> {
  final _codeController = TextEditingController();

  final _timeoutController = TimeoutController();

  @override
  void initState() {
    super.initState();
    _timeoutController.startFromDateTime(widget.preferences.timestamp);
  }

  @override
  void dispose() {
    _codeController.dispose();
    _timeoutController.dispose();
    super.dispose();
  }

  void resendCode() {
    phoneAuth.verifyPhoneNumber(widget.preferences.phoneNumber);
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Agora falta pouco!',
                style: theme.textTheme.headline4,
              ),
              const SizedBox(height: 48.0),
              Observer(builder: (_) {
                return SmsInstructionsWidget(
                  phone: phoneAuth.state.maybeMap(
                    orElse: () => 'Sem Número',
                    waitingCode: (data) => data.preferences.phoneNumber,
                  ),
                  onWrongNumberClicked: phoneAuth.reset,
                );
              }),
              const SizedBox(height: 48.0),
              FieldWrapper(
                label: 'Digite o código de confirmação',
                child: TextFormField(
                  controller: _codeController,
                  maxLength: 6,
                  keyboardType: TextInputType.phone,
                  validator: (value) => value!.isEmpty
                      ? 'O código de confirmação é obrigatório'
                      : null,
                  decoration: InputDecoration(
                    errorText: phoneAuth.error?.toString(),
                  ),
                ),
              ),
              const Spacer(),
              ValueListenableBuilder<int>(
                valueListenable: _timeoutController,
                builder: (context, seconds, _) {
                  return OutlinedButton(
                    child: Text(
                      _timeoutController.isFinish
                          ? 'Solicitar novo código'
                          : 'Aguarde pelo menos $seconds segundos',
                      textAlign: TextAlign.center,
                    ),
                    onPressed: _timeoutController.isFinish ? resendCode : null,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
