part 'validates/is_required.dart';

abstract class Validate {
  String? call(String? value);
}

typedef ValidateCallback = String? Function(String? value);

ValidateCallback useValidates(List<Validate> validates) {
  return (String? value) {
    for (var validate in validates) {
      final result = validate.call(value!);
      if (result != null && result.isNotEmpty) {
        return result;
      }
    }
    return null;
  };
}
