import 'package:flutter/widgets.dart';

import '../../../../utils/easy_notifier.dart';
import '../../../core/entities/feeling.dart';
import '../../../core/entities/feeling_diary.dart';
import '../../../core/feeling_service.dart';

class ShareFeelingDiaryModel extends EasyNotifier {
  ShareFeelingDiaryModel({
    required this.feeling,
    required FeelingService feelingRepository,
  }) : _feelingRepository = feelingRepository {
    text.addListener(_checkText);
  }

  final FeelingService _feelingRepository;

  final Feeling feeling;
  final text = TextEditingController();

  bool _textValid = false;
  bool get isTextValid => _textValid;
  void _checkText() => notify(() => _textValid = text.text.length > 10);

  VoidCallback? _onShareSuccess;
  set onShareSuccess(VoidCallback? event) => _onShareSuccess = event;

  void shareFeeling() async {
    await _feelingRepository.save(
      FeelingDiary(
        feeling: feeling,
        text: text.text,
      ),
    );
    _onShareSuccess?.call();
  }
}
