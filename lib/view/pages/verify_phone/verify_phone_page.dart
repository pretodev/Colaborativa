import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../state/auth/auth_cubit.dart';
import '../../../utils/strings/strings.dart' as strings;
import '../../../utils/validation/validation.dart';
import '../../_commons/field_wrapper.dart';
import 'widgets/user_terms_widget.dart';

class VerifyPhonePage extends StatefulWidget {
  const VerifyPhonePage({
    Key? key,
  }) : super(key: key);

  @override
  State<VerifyPhonePage> createState() => _VerifyPhonePageState();
}

class _VerifyPhonePageState extends State<VerifyPhonePage> {
  final formKey = GlobalKey<FormState>();

  final _phoneController = TextEditingController();

  var maskFormatter = MaskTextInputFormatter(
    mask: '(##) # ####-####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  void _submit() {
    if (formKey.currentState!.validate()) {
      final phoneNumber = strings.extractNumbers(_phoneController.text);
      context.read<AuthCubit>().verifyPhoneNumber(phoneNumber: phoneNumber);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<AuthCubit, AuthState>(
            builder: (_, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 32),
                  Text(
                    'Vamos fazer login',
                    style: theme.textTheme.headline4,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'É bom ter você aqui com a gente',
                    style: theme.textTheme.headline5,
                  ),
                  const Spacer(),
                  Form(
                    key: formKey,
                    child: FieldWrapper(
                      label: 'Digite seu telefone',
                      child: TextFormField(
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          errorText: state.mapOrNull(
                            verifyPhoneNumberError: (state) => state.errorMsg,
                          ),
                        ),
                        inputFormatters: [maskFormatter],
                        validator: useValidates([
                          isRequired('Por favor, digite seu telefone'),
                        ]),
                      ),
                    ),
                  ),
                  const Spacer(),
                  const SendPhoneTermsWidget(),
                  const SizedBox(height: 28),
                  Visibility(
                    visible: !state.isVerifyPhoneNumberLoading,
                    child: ElevatedButton(
                      child: const Text('Confirmar'),
                      onPressed: _submit,
                    ),
                    replacement: const ElevatedButton(
                      child: Text('Aguarde um instance'),
                      onPressed: null,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
