import 'package:flutter/material.dart';

import '../../../../domain/user/breed.dart';
import '../../../../domain/user/gender.dart';
import '../../../../domain/user/user_profile.dart';
import '../../../_commons/date_form_field.dart';
import '../../../_commons/dropdown_field.dart';
import '../../../_commons/field_wrapper.dart';

class ProfileForm extends StatefulWidget {
  final void Function(UserProfile) onSubmit;
  final bool saving;

  const ProfileForm({
    Key? key,
    required this.onSubmit,
    this.saving = false,
  }) : super(key: key);

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormState>();

  final _name = TextEditingController();

  Gender? _gender;
  Breed? _breed;
  DateTime? _birthday;

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      widget.onSubmit(UserProfile(
        name: _name.text,
        breed: _breed!,
        bithday: _birthday!,
        gender: _gender!,
      ));
    }
  }

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FieldWrapper(
            label: 'Seu nome',
            child: TextFormField(
              controller: _name,
              readOnly: widget.saving,
            ),
          ),
          const SizedBox(height: 16),
          FieldWrapper(
            label: 'Data de nascimento',
            child: DateFormField(
              readOnly: widget.saving,
              onChanged: (date) {
                _birthday = date;
              },
            ),
          ),
          const SizedBox(height: 16),
          FieldWrapper(
            label: 'Sexo',
            child: DropdownField<Gender>(
              readOnly: widget.saving,
              onChanged: (value) {
                _gender = value;
              },
              items: const [
                DropdownFieldItem<Gender>(
                  value: Gender.female,
                  label: 'Feminino',
                ),
                DropdownFieldItem<Gender>(
                  value: Gender.male,
                  label: 'Masculino',
                ),
                DropdownFieldItem<Gender>(
                  value: Gender.others,
                  label: 'Outros',
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          FieldWrapper(
            label: 'Cor ou raça',
            child: DropdownField<Breed>(
              readOnly: widget.saving,
              onChanged: (value) {
                _breed = value;
              },
              items: const [
                DropdownFieldItem<Breed>(
                  value: Breed.yellow,
                  label: 'Amarela',
                ),
                DropdownFieldItem<Breed>(
                  value: Breed.white,
                  label: 'Branca',
                ),
                DropdownFieldItem<Breed>(
                  value: Breed.indigenous,
                  label: 'Indígena',
                ),
                DropdownFieldItem<Breed>(
                  value: Breed.brown,
                  label: 'Parda',
                ),
                DropdownFieldItem<Breed>(
                  value: Breed.black,
                  label: 'Preta',
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            child: const Text('Salvar'),
            onPressed: widget.saving ? null : _submit,
          ),
        ],
      ),
    );
  }
}
