import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

import '../utils/date/date_utils.dart';

class ScoreService {
  final _db = FirebaseDatabase.instance;
  final _userId = FirebaseAuth.instance.currentUser!.uid;

  Stream<int> get score {
    print(todayKey);
    return _db
        .ref('score/day/$todayKey/$_userId/total')
        .onValue
        .map((event) => event.snapshot.value as int);
  }
}
