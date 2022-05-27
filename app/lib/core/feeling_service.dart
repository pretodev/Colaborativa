import 'package:dio/dio.dart';
import 'package:firebase_database/firebase_database.dart';

import '../utils/date/date_utils.dart';
import 'entities/feeling_diary.dart';

class FeelingService {
  final FirebaseDatabase _db;
  final Dio _colaborativaApi;
  final String _userId;

  FeelingService(
    String userId, {
    required FirebaseDatabase db,
    required Dio colaborativaApi,
  })  : _db = db,
        _userId = userId,
        _colaborativaApi = colaborativaApi;

  Future<void> save(FeelingDiary feelingDiary) async {
    await _colaborativaApi.post(
      '/save-feeling',
      data: {
        'category': feelingDiary.feeling.name,
        'description': feelingDiary.text,
      },
    );
  }

  Stream<bool> isFeelingDiarySaved() {
    final ref = _db.ref('users/$_userId/feelings/$todayKey');
    return ref.onValue.map((event) => event.snapshot.exists);
  }
}
