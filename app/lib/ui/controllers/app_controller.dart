import 'dart:async';

import 'package:flutter/widgets.dart';

import '../../core/app_service.dart';
import '../../core/entities/app_configs.dart';

class AppController extends ChangeNotifier {
  AppController({
    required AppService appService,
  }) : _appService = appService;

  final AppService _appService;

  AppConfigs _config = const AppConfigs(chatSSuggestions: {});
  AppConfigs get config => _config;

  StreamSubscription? _subscription;

  void _changeConfigs(AppConfigs config) {
    _config = config;
    notifyListeners();
  }

  void load() {
    _subscription = _appService.config().listen(_changeConfigs);
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
