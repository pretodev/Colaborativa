import 'package:freezed_annotation/freezed_annotation.dart';

part 'achievement.freezed.dart';

@freezed
class Achievement with _$Achievement {
  const Achievement._();

  const factory Achievement({
    required String id,
    required String description,
    required int maxLevel,
    required int maxLevelProgess,
    required int userLevel,
    required int userProgress,
  }) = _Achievement;
}
