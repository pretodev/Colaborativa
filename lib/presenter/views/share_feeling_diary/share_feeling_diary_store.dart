import 'package:modx/modx.dart';

import '../../../domain/feeling/feeling.dart';

class ShareFeelingDiaryStore {
  ShareFeelingDiaryStore({
    required this.feeling,
  });

  final Feeling feeling;

  final _rxSendDiary = RxBool(false);
  bool get canSendDiary => _rxSendDiary.value;
  void setSendDiary(bool status) => _rxSendDiary.value = status;
}
