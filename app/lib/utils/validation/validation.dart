typedef ValidateCallback = String? Function(String? value);

ValidateCallback isRequired([String? message]) {
  return (String? value) {
    if (value == null || value.isEmpty) {
      return message ?? 'Campo obrigatório';
    }
    return null;
  };
}

ValidateCallback min(int count, [String? message]) {
  return (String? value) {
    if (value == null || value.length < count) {
      return message ?? 'Campo deve ter pelo menos $count caracteres';
    }
    return null;
  };
}

extension ValidationsExtension on List<ValidateCallback> {
  ValidateCallback validate() {
    return (String? value) {
      for (var validate in this) {
        final result = validate(value!);
        if (result != null && result.isNotEmpty) {
          return result;
        }
      }
      return null;
    };
  }
}
