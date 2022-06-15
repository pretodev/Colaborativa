enum MessageTypesEnum {
  none,
  acknowledgment,
  support,
  notification,
  custom;

  String get individualSuggestionKey => '${name}Individual';
  String get allSuggestionKey => '${name}All';
}
