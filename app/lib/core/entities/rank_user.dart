import 'package:freezed_annotation/freezed_annotation.dart';

part 'rank_user.freezed.dart';

@freezed
class RankUser with _$RankUser {
  const RankUser._();

  const factory RankUser({
    required String name,
    required int score,
  }) = _RankUser;
}
