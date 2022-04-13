import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user.dart';
import 'feeling.dart';

part 'editing_feeling_diary.freezed.dart';

@freezed
class EditingFeelingDiary with _$EditingFeelingDiary {
  const EditingFeelingDiary._();

  const factory EditingFeelingDiary({
    required Feeling feeling,
    required String text,
  }) = _EditingFeelingDiary;
}
