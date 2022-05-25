import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

import '../../../../utils/validation/validation.dart';
import '../../controllers/auth_controller.dart';
import '../../widgets/field_wrapper.dart';
import 'widgets/user_terms_widget.dart';

class VerifyPhoneNumberView extends StatefulWidget {
  const VerifyPhoneNumberView({Key? key}) : super(key: key);

  @override
  State<VerifyPhoneNumberView> createState() => _VerifyPhoneNumberViewState();
}

class _VerifyPhoneNumberViewState extends State<VerifyPhoneNumberView> {
  final _formKey = GlobalKey<FormState>();
  final _phoneNumberController = TextEditingController();

  late final AuthController _authController;

  var _checkingPhone = false;
  set checkingPhone(bool value) => setState(() => _checkingPhone = value);

  void verifyPhoneNumber() {
    if (_formKey.currentState?.validate() ?? false) {
      checkingPhone = true;
      _authController.verifyPhoneNumber(_phoneNumberController.text);
    }
  }

  @override
  void initState() {
    super.initState();
    _authController = context.read();
    _authController.addListener(() {
      if (_authController.error != null) {
        checkingPhone = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    final theme = Theme.of(context);
    final maskFormatter = MaskTextInputFormatter(
      mask: '(##) # ####-####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
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
                key: _formKey,
                child: Consumer<AuthController>(
                  builder: (context, auth, child) {
                    return FieldWrapper(
                      label: 'Digite seu telefone',
                      child: TextFormField(
                        controller: _phoneNumberController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          errorText: auth.error,
                          errorMaxLines: 2,
                        ),
                        readOnly: _checkingPhone,
                        inputFormatters: [maskFormatter],
                        validator: useValidates([
                          isRequired('Por favor, digite seu telefone'),
                        ]),
                      ),
                    );
                  },
                ),
              ),
              const Spacer(),
              const SendPhoneTermsWidget(),
              const SizedBox(height: 28),
              Visibility(
                visible: !_checkingPhone,
                replacement: const ElevatedButton(
                  onPressed: null,
                  child: Text('Aguarde um instance'),
                ),
                child: ElevatedButton(
                  onPressed: verifyPhoneNumber,
                  child: const Text('Confirmar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
