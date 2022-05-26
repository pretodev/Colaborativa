import 'package:colaborativa_app/utils/validation/validation.dart';
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
  final UserProfile? initialValue;

  const ProfileForm({
    Key? key,
    this.initialValue,
    required this.onSubmit,
    this.saving = false,
  }) : super(key: key);

  @override
  State<ProfileForm> createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormState>();

  String? _name;
  GenderEnum? _gender;
  EthnicityEnum? _ethnicity;
  DateTime? _birthday;

  void _submit() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      widget.onSubmit(UserProfile(
        name: _name!,
        ethnicity: _ethnicity!,
        birthday: _birthday!,
        gender: _gender!,
      ));
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.initialValue != null) {
      _name = widget.initialValue!.name;
      _birthday = widget.initialValue!.birthday;
      _ethnicity = widget.initialValue!.ethnicity;
      _gender = widget.initialValue!.gender;
    }
  }

  @override
  void dispose() {
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
              initialValue: _name,
              readOnly: widget.saving,
              onSaved: (value) => _name = value,
              validator: [
                isRequired('Nome obrigatório'),
              ].validate(),
            ),
          ),
          const SizedBox(height: 16),
          FieldWrapper(
            label: 'Data de nascimento',
            child: DateFormField(
              readOnly: widget.saving,
              initialValue: _birthday,
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
              value: _gender,
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
              value: _ethnicity,
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
