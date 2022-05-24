import 'package:flutter/widgets.dart';

extension BuildContextExtension on BuildContext {
  T args<T>() {
    return ModalRoute.of(this)!.settings.arguments as T;
  }
}
