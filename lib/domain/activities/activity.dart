import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';

@freezed
class Activity with _$Activity {
  const Activity._();

  const factory Activity({
    required String id,
    required String iconUrl,
    required String name,
    required String description,
    DateTime? lastChecking,
  }) = _Activity;
}
