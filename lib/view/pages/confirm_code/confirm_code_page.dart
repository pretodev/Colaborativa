import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../state/auth/auth_cubit.dart';
import '../../_commons/controllers/timeout_controller.dart';
import '../../_commons/field_wrapper.dart';
import 'widgets/sms_instructions_widget.dart';

class ConfirmCodePage extends StatefulWidget {
  const ConfirmCodePage({
    Key? key,
  }) : super(key: key);

  @override
  State<ConfirmCodePage> createState() => _ConfirmCodePageState();
}

class _ConfirmCodePageState extends State<ConfirmCodePage> {
  final _timeoutController = TimeoutController();
  final _codeFocus = FocusNode();

  late AuthCubit _authCubit;
  late String _phoneNumber;
  late String _verificationId;

  @override
  void initState() {
    super.initState();
    _authCubit = context.read<AuthCubit>();
    _authCubit.state.whenOrNull(confirmSmsCode: (status) {
      _phoneNumber = status.phoneNumber;
      _verificationId = status.verificationId;
      _timeoutController.startFromDateTime(status.timestamp);
    });
  }

  @override
  void dispose() {
    _timeoutController.dispose();
    super.dispose();
  }

  void requestNewCode() {
    _authCubit.requestNewCode(
      phoneNumber: _phoneNumber,
    );
  }

  void sendCode(String code) {
    if (code.length == 6) {
      _codeFocus.unfocus();
      _authCubit.confirmSmsCode(
        smsCode: code,
        verificationId: _verificationId,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              _authCubit.state.whenOrNull(confirmSmsCode: (status) {
                _phoneNumber = status.phoneNumber;
                _verificationId = status.verificationId;
                _timeoutController.startFromDateTime(status.timestamp);
              });
            },
            builder: (_, state) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Agora falta pouco!',
                  style: theme.textTheme.headline4,
                ),
                const SizedBox(height: 48.0),
                SmsInstructionsWidget(
                  phone: state.maybeWhen(
                    orElse: () => 'Sem Número',
                    confirmSmsCode: (status) => status.phoneNumber,
                  ),
                  onWrongNumberClicked: requestNewCode,
                ),
                const SizedBox(height: 48.0),
                FieldWrapper(
                  label: 'Digite o código de confirmação',
                  child: TextFormField(
                    maxLength: 6,
                    keyboardType: TextInputType.phone,
                    onChanged: sendCode,
                    validator: (value) => value!.isEmpty
                        ? 'O código de confirmação é obrigatório'
                        : null,
                    decoration: InputDecoration(
                        errorText: state.whenOrNull(
                          confirmSmsCodeError: (errorMsg) => errorMsg,
                        ),
                        helperText: state.whenOrNull(
                          confirmSmsCodeLoading: () =>
                              'Verificando o código, aguarde por favor...',
                        )),
                    focusNode: _codeFocus,
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
                      onPressed:
                          _timeoutController.isFinish ? requestNewCode : null,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
