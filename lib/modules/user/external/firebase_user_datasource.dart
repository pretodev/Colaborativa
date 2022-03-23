import 'package:firebase_auth/firebase_auth.dart' as fa;

import '../data/adapters/user_datasource.dart';
import '../data/entities/user.dart';

class FirebaseUserDatasource implements UserDatasource {
  fa.FirebaseAuth get _auth => fa.FirebaseAuth.instance;

  @override
  Stream<User?> get user {
    return _auth.authStateChanges().map((user) {
      return user == null ? null : const User();
    });
  }
}
