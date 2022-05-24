import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import '../../../utils/date/date_utils.dart';
import 'entities/feeling_diary.dart';

class FeelingRepository {
  final _db = FirebaseDatabase.instance;
  final _userId = FirebaseAuth.instance.currentUser!.uid;

  Future<void> save(FeelingDiary feelingDiary) async {}

  Stream<bool> isFeelingDiarySaved() {
    final ref = _db.ref('users/$_userId/feelings/${DateUtils.todayKey}');
    return ref.onValue.map((event) => event.snapshot.exists);
  }
}
