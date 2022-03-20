import 'package:firebase_auth/firebase_auth.dart' as fa;

import '../business/adapters/user_datasource.dart';
import '../business/entities/user_status.dart';

class FirebaseUserDatasource implements UserDatasource {
  fa.FirebaseAuth get _auth => fa.FirebaseAuth.instance;

  @override
  Stream<UserStatus> get userStatus {
    return _auth.authStateChanges().map((user) {
      if (user == null) return const UserStatus.unauthenticated();
      return const UserStatus.authenticated();
    });
  }
}
