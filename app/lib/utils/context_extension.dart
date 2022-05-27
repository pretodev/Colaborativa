import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

extension BuildContextExtension on BuildContext {
  T args<T>() {
    return ModalRoute.of(this)!.settings.arguments as T;
  }

  String get userId {
    return read<FirebaseAuth>().currentUser!.uid;
  }
}
