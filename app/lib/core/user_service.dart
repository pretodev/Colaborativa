import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:colaborativa_app/core/entities/user_profile.dart';
import 'package:colaborativa_app/core/enums/ethnicity_enum.dart';
import 'package:colaborativa_app/core/enums/gender_enum.dart';
import 'package:firebase_auth/firebase_auth.dart' as fa;

import 'entities/user.dart';

class UserService {
  final _firestore = FirebaseFirestore.instance;
  final _userId = fa.FirebaseAuth.instance.currentUser!.uid;

  Future<UserProfile> get profile async {
    final snapshot = await _firestore.collection('users').doc(_userId).get();
    return _fromSnaphot(snapshot);
  }

  bool get hasUser => fa.FirebaseAuth.instance.currentUser?.uid != null;

  Future<void> saveProfile(UserProfile profile) async {
    return _firestore
        .collection('users')
        .doc(_userId)
        .set(_toMap(profile), SetOptions(merge: true));
  }

  Stream<User?> get user {
    return _firestore.collection('users').doc(_userId).snapshots().map((doc) {
      if (!hasUser) return null;
      if (!doc.exists) return null;
      return User(id: doc.id, name: doc.get('name'));
    });
  }
}

UserProfile _fromSnaphot(DocumentSnapshot snapshot) {
  return UserProfile(
    birthday: (snapshot.get('birthday') as Timestamp).toDate(),
    ethnicity: EthnicityEnum.fromString(snapshot.get('ethnicity')),
    gender: GenderEnum.fromString(snapshot.get('gender')),
    name: snapshot.get('name'),
  );
}

Map<String, dynamic> _toMap(UserProfile user) {
  return {
    'name': user.name,
    'ethnicity': user.ethnicity.name,
    'gender': user.gender.name,
    'birthday': Timestamp.fromDate(user.birthday),
  };
}
