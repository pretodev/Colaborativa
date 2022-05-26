enum EthnicityEnum {
  yellow,
  black,
  white,
  indigenous,
  brown;

  factory EthnicityEnum.fromString(String value) {
    return EthnicityEnum.values.firstWhere((e) => e.name == value);
  }
}
