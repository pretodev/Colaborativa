import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:colaborativa_app/core/entities/user_profile.dart';
import 'package:colaborativa_app/core/enums/ethnicity_enum.dart';
import 'package:colaborativa_app/core/enums/gender_enum.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart' as fa;

import 'entities/user.dart';

class UserService {
  UserService(
    this._userId, {
    required FirebaseFirestore firestore,
    required Dio colaborativaApi,
  })  : _firestore = firestore,
        _colaborativaApi = colaborativaApi;

  final FirebaseFirestore _firestore;
  final String _userId;
  final Dio _colaborativaApi;

  Future<UserProfile> get profile async {
    final snapshot = await _firestore.collection('users').doc(_userId).get();
    return _fromSnaphot(snapshot);
  }

  bool get hasUser => fa.FirebaseAuth.instance.currentUser?.uid != null;

  Future<void> saveProfile(UserProfile profile) async {
    await _colaborativaApi.post('/save-user', data: _toMap(profile));
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
    'birthday': "${user.birthday.toIso8601String()}-03:00",
  };
}
