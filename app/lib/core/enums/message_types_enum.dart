enum MessageTypesEnum {
  acknowledgment,
  support,
  incentive,
  custom;

  String get individualSuggestionKey => '${name}Individual';
  String get allSuggestionKey => '${name}All';
}
