import 'package:flutter/material.dart';

import '../../../../core/entities/user_profile.dart';
import '../../../../core/enums/ethnicity_enum.dart';
import '../../../../core/enums/gender_enum.dart';
import '../../../widgets/date_form_field.dart';
import '../../../widgets/dropdown_field.dart';
import '../../../widgets/field_wrapper.dart';

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

  GenderEnum? _gender;
  EthnicityEnum? _ethnicity;
  DateTime? _birthday;

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      widget.onSubmit(UserProfile(
        name: _name.text,
        ethnicity: _ethnicity!,
        birthday: _birthday!,
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
            child: DropdownField<GenderEnum>(
              readOnly: widget.saving,
              onChanged: (value) {
                _gender = value;
              },
              items: const [
                DropdownFieldItem<GenderEnum>(
                  value: GenderEnum.female,
                  label: 'Feminino',
                ),
                DropdownFieldItem<GenderEnum>(
                  value: GenderEnum.male,
                  label: 'Masculino',
                ),
                DropdownFieldItem<GenderEnum>(
                  value: GenderEnum.others,
                  label: 'Outros',
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          FieldWrapper(
            label: 'Cor ou raça',
            child: DropdownField<EthnicityEnum>(
              readOnly: widget.saving,
              onChanged: (value) {
                _ethnicity = value;
              },
              items: const [
                DropdownFieldItem<EthnicityEnum>(
                  value: EthnicityEnum.yellow,
                  label: 'Amarela',
                ),
                DropdownFieldItem<EthnicityEnum>(
                  value: EthnicityEnum.white,
                  label: 'Branca',
                ),
                DropdownFieldItem<EthnicityEnum>(
                  value: EthnicityEnum.indigenous,
                  label: 'Indígena',
                ),
                DropdownFieldItem<EthnicityEnum>(
                  value: EthnicityEnum.brown,
                  label: 'Parda',
                ),
                DropdownFieldItem<EthnicityEnum>(
                  value: EthnicityEnum.black,
                  label: 'Preta',
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          ElevatedButton(
            onPressed: widget.saving ? null : _submit,
            child: const Text('Salvar'),
          ),
        ],
      ),
    );
  }
}
