import 'package:freezed_annotation/freezed_annotation.dart';

import 'feeling.dart';

part 'feeling_diary.freezed.dart';

@freezed
class FeelingDiary with _$FeelingDiary {
  const FeelingDiary._();

  const factory FeelingDiary({
    required Feeling feeling,
    required String text,
  }) = _FeelingDiary;
}
