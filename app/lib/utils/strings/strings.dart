String extractNumbers(String text) {
  return text.replaceAll(RegExp(r'[^0-9]'), '');
}

extension StringExtension on String {
  String get onlyNumbers {
    return replaceAll(RegExp(r'[^0-9]'), '');
  }

  String get capitalize {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
