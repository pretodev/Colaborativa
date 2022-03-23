part of '../validation.dart';

class _IsRequiredValidate implements Validate {
  final String message;

  _IsRequiredValidate(this.message);

  @override
  String? call(String? value) {
    return value!.isEmpty ? message : null;
  }
}

_IsRequiredValidate isRequired(String message) => _IsRequiredValidate(message);
