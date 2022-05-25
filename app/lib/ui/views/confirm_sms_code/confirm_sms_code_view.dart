import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../controllers/auth_controller.dart';
import '../../widgets/field_wrapper.dart';
import 'widgets/sms_instructions_widget.dart';

class ConfirmSmsCodeView extends StatefulWidget {
  const ConfirmSmsCodeView({Key? key}) : super(key: key);

  @override
  State<ConfirmSmsCodeView> createState() => _ConfirmSmsCodeViewState();
}

class _ConfirmSmsCodeViewState extends State<ConfirmSmsCodeView> {
  final _smsCodeController = TextEditingController();
  final _smsCodeFocus = FocusNode();

  late final AuthController _authController;

  Timer? _timer;

  var _isSmsCodeChecking = false;
  set smsCodeChecking(bool value) => setState(() => _isSmsCodeChecking = value);

  var _timeoutSeconds = 0;
  set timeoutSeconds(int value) => setState(() => _timeoutSeconds = value);
  bool get isTimeout => _timeoutSeconds <= 0;

  var _canRequestNewCode = false;
  set canRequestNewCode(bool value) =>
      setState(() => _canRequestNewCode = value);

  void setTimeout(DateTime startTimestamp, {int maxSeconds = 60}) {
    canRequestNewCode = true;
    final seconds =
        DateTime.now().difference(startTimestamp).inSeconds - maxSeconds;
    timeoutSeconds = seconds < maxSeconds ? seconds.abs() : 0;
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      timeoutSeconds = _timeoutSeconds - 1;
      if (isTimeout) {
        timer.cancel();
      }
    });
  }

  void requestNewSmsCode() {
    canRequestNewCode = false;
    _authController.requestNewSmsCode();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _authController = context.read<AuthController>();
    _authController.addListener(() {
      if (_authController.error != null) {
        smsCodeChecking = false;
      }
      if (_authController.phonePreferences != null) {
        setTimeout(_authController.phonePreferences!.timestamp);
      }
    });
    setTimeout(_authController.phonePreferences!.timestamp);
    _smsCodeController.addListener(() {
      if (_smsCodeController.text.length < 6) {
        return;
      }
      smsCodeChecking = true;
      _authController.confirmSmsCode(_smsCodeController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    final phonePreferences = _authController.status.whenOrNull(
      waitingSmsCode: (value) => value,
    );
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
              SmsInstructionsWidget(
                phone: phonePreferences!.phoneNumber,
                onWrongNumberClicked: _authController.resetNumber,
              ),
              const SizedBox(height: 48.0),
              Consumer<AuthController>(
                builder: (context, auth, child) => FieldWrapper(
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
                      errorText: auth.error,
                      errorMaxLines: 2,
                    ),
                    focusNode: _smsCodeFocus,
                  ),
                ),
              ),
              const Spacer(),
              OutlinedButton(
                onPressed:
                    isTimeout && _canRequestNewCode ? requestNewSmsCode : null,
                child: Text(
                  !_canRequestNewCode
                      ? 'Solicitando novo codigo'
                      : isTimeout
                          ? 'Solicitar novo código'
                          : 'Aguarde pelo menos $_timeoutSeconds segundos',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
