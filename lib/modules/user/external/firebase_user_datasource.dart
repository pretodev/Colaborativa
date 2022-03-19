import 'package:firebase_auth/firebase_auth.dart' as fa;

import '../business/adapters/user_datasource.dart';
import '../business/entities/user.dart';

class FirebaseUserDatasource implements UserDatasource {
  fa.FirebaseAuth get _auth => fa.FirebaseAuth.instance;

  @override
  Stream<User?> get currentUser {
    return _auth.authStateChanges().map((user) {
      if (user == null) return null;
      return const User();
    });
  }
}
