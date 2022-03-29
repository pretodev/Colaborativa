import 'dart:async';

import 'package:flutter/foundation.dart';

class TimeoutController extends ValueNotifier<int> {
  TimeoutController() : super(0);

  Timer? timer;

  bool get isFinish => value <= 0;

  int get seconds => value;

  void startFromDateTime(DateTime dateTime, {int timeoutSeconds = 60}) {
    final seconds =
        DateTime.now().difference(dateTime).inSeconds - timeoutSeconds;
    value = seconds < timeoutSeconds ? seconds.abs() : 0;
    notifyListeners();
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      value -= 1;
      if (isFinish) {
        timer.cancel();
      }
      notifyListeners();
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
}
