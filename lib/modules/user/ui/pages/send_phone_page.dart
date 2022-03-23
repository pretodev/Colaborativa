import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../app/widgets/field_wrapper.dart';
import '../../../../utils/strings/strings.dart';
import '../../../../utils/validation/validation.dart';
import '../../viewmodels/phone_auth_viewmodel.dart';
import '../widgets/user_terms_widget.dart';

class SendPhonePage extends StatefulWidget {
  const SendPhonePage({
    Key? key,
  }) : super(key: key);

  @override
  State<SendPhonePage> createState() => _SendPhonePageState();
}

class _SendPhonePageState extends State<SendPhonePage> {
  final formKey = GlobalKey<FormState>();

  final phoneController = TextEditingController();

  var maskFormatter = MaskTextInputFormatter(
    mask: '(##) # ####-####',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.lazy,
  );

  final phoneAuth = PhoneAuthViewmodel.instance;

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void _submit() {
    if (formKey.currentState!.validate()) {
      final phoneNumber = extractNumbers(phoneController.text);
      phoneAuth.verifyPhoneNumber('+55$phoneNumber');
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
          child: Form(
            key: formKey,
            child: Observer(builder: (_) {
              print(phoneAuth.isLoading);
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
                  FieldWrapper(
                    label: 'Digite seu telefone',
                    child: TextFormField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        errorText: phoneAuth.error?.toString(),
                      ),
                      inputFormatters: [maskFormatter],
                      validator: useValidates([
                        isRequired('Por favor, digite seu telefone'),
                      ]),
                    ),
                  ),
                  const Spacer(),
                  const SendPhoneTermsWidget(),
                  const SizedBox(height: 28),
                  Visibility(
                    visible: !phoneAuth.isLoading,
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
            }),
          ),
        ),
      ),
    );
  }
}
