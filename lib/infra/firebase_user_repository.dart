import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as fa;

import '../domain/user/user.dart';
import '../domain/user/user_datasource.dart';

class FirebaseUserRepository implements UserRepository {
  final fa.FirebaseAuth _auth = fa.FirebaseAuth.instance;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Stream<User?> get user {
    return _auth.authStateChanges().asyncMap((faUser) async {
      if (faUser == null) return null;
      final userData = await _firestore.doc('users/${faUser.uid}').get();
      if (!userData.exists) return User.unregistered(id: faUser.uid);
      return User.registered(
        id: faUser.uid,
        name: userData.get('name') as String,
        email: userData.get('email') as String,
      );
    });
  }
}
