import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_configs.freezed.dart';

@freezed
class AppConfigs with _$AppConfigs {
  const AppConfigs._();

  const factory AppConfigs({
    required Map<String, List<String>> chatSSuggestions,
    required String newsUrl,
  }) = _AppConfigs;
}
