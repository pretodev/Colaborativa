enum GenderEnum {
  female,
  male,
  others;

  factory GenderEnum.fromString(String value) {
    return GenderEnum.values.firstWhere((e) => e.name == value);
  }
}
