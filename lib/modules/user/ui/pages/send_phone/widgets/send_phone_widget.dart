import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../app/widgets/field_wrapper.dart';
import '../cubit/send_phone_cubit.dart';
import 'send_phone_terms_widget.dart';

class SendPhoneWidget extends StatefulWidget {
  const SendPhoneWidget({Key? key}) : super(key: key);

  @override
  State<SendPhoneWidget> createState() => _SendPhoneWidgetState();
}

class _SendPhoneWidgetState extends State<SendPhoneWidget> {
  final formKey = GlobalKey<FormState>();

  final phoneController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void _submit() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      context.read<SendPhoneCubit>().sendPhone(phoneController.text);
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
          child: BlocBuilder<SendPhoneCubit, SendPhoneState>(
            builder: (context, state) {
              final errorMessage = state.mapOrNull(
                failure: (state) => state.error.toString(),
              );
              return Form(
                key: formKey,
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
                    FieldWrapper(
                      label: 'Digite seu telefone',
                      child: TextFormField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          errorText: errorMessage,
                        ),
                        validator: (value) => value!.isEmpty
                            ? 'Por favor, digite seu telefone'
                            : null,
                      ),
                    ),
                    const Spacer(),
                    const SendPhoneTermsWidget(),
                    const SizedBox(height: 28),
                    ElevatedButton(
                      child: const Text('Confirmar'),
                      onPressed: _submit,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
