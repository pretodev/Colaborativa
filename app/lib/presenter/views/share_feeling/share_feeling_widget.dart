import 'package:flutter/material.dart';
import 'package:modx/modx.dart';

import '../../../app/feeling/is_registered_day_feeling.dart';
import '../../../domain/feeling/feeling_repository.dart';
import '../../../infra/firebase_feeling_repository.dart';
import 'share_feeling_controller.dart';
import 'share_feeling_store.dart';
import 'share_feeling_view.dart';

class ShareFeelingWidget extends ModxWidget {
  const ShareFeelingWidget({Key? key}) : super(key: key);

  @override
  final view = const ShareFeelingView();

  @override
  void binding(i) {
    // Add others dependencies
    bind<FeelingRepository>(FirebaseFeelingRepository());
    bind(IsRegisteredDayFeeling(feelingRepository: i()));
    bind(ShareFeelingStore());
    bind(ShareFeelingController(isRegisteredDayFeeling: i()));
  }
}
