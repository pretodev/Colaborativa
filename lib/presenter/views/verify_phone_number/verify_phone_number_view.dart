import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:modx/modx.dart';

import '../../../utils/validation/validation.dart';
import '../../widgets/field_wrapper.dart';
import 'verify_phone_number_controller.dart';
import 'verify_phone_number_store.dart';
import 'widgets/user_terms_widget.dart';

class VerifyPhoneNumberView
    extends ModxView<VerifyPhoneNumberController, VerifyPhoneNumberStore> {
  const VerifyPhoneNumberView({Key? key}) : super(key: key);

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
                key: controller.form,
                child: FieldWrapper(
                  label: 'Digite seu telefone',
                  child: Obx(
                    () => TextFormField(
                      controller: controller.phone,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        errorText: store.authError?.message,
                        errorMaxLines: 2,
                      ),
                      readOnly: store.isPhoneNumberChecking,
                      inputFormatters: [maskFormatter],
                      validator: useValidates([
                        isRequired('Por favor, digite seu telefone'),
                      ]),
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const SendPhoneTermsWidget(),
              const SizedBox(height: 28),
              Obx(
                () => Visibility(
                  visible: !store.isPhoneNumberChecking,
                  child: ElevatedButton(
                    child: const Text('Confirmar'),
                    onPressed: controller.verifyPhoneNumber,
                  ),
                  replacement: const ElevatedButton(
                    child: Text('Aguarde um instance'),
                    onPressed: null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
