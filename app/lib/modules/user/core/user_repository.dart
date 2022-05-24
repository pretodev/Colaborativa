import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as fa;

import 'entity/user.dart';

class UserRepository {
  final fa.FirebaseAuth _auth = fa.FirebaseAuth.instance;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<User> currentUser() async {
    final faUser = _auth.currentUser;
    if (faUser == null) {
      return const User.unauthenticated();
    }
    final snap = await _firestore.doc('users/${faUser.uid}').get();
    if (!snap.exists) {
      return User.unregistered(id: faUser.uid);
    }
    return User.registered(
      id: faUser.uid,
      name: snap.get('name') as String,
    );
  }
}
