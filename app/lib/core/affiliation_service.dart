import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:colaborativa_app/core/entities/user.dart';
import 'package:dio/dio.dart';

import 'mappers/user_mappper.dart';

class AffiliationService {
  AffiliationService(
    this._userId, {
    required FirebaseFirestore firestore,
    required Dio colaborativaApi,
  })  : _firestore = firestore,
        _colaborativaApi = colaborativaApi;

  final String _userId;
  final FirebaseFirestore _firestore;
  final Dio _colaborativaApi;

  Future<bool> get canAffiliate async {
    final snapshot = await _firestore.collection('users').doc(_userId).get();
    if (snapshot.exists) {
      return snapshot.get('mentor') == null;
    }
    return false;
  }

  Future<List<User>> get freeMentors async {
    final snap = await _firestore
        .collection('users')
        .where('mentored', isNull: true)
        .get();
    return snap.docs
        .map((doc) => UserMappper.fromDocumentSnapshot(doc))
        .where((user) => user.id != _userId)
        .toList();
  }

  Future<void> affiliate(String mentorId) async {
    _colaborativaApi.post('/affiliate', data: {
      'mentorId': mentorId,
    });
  }

  Stream<User?> get mentor {
    return _firestore
        .doc('users/$_userId')
        .snapshots()
        .asyncMap((snapshot) async {
      if (!snapshot.exists) return null;
      final mentorId = snapshot.get('mentor');
      if (mentorId != null) {
        final mentorSnapshot =
            await _firestore.collection('users').doc(mentorId).get();
        if (mentorSnapshot.exists) {
          return User(
            id: mentorSnapshot.id,
            name: mentorSnapshot.get('name'),
          );
        }
      }
      return null;
    });
  }
}
