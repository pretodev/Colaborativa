import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:colaborativa_app/core/entities/user.dart';

class UserMappper {
  static User fromDocumentSnapshot(DocumentSnapshot snap) {
    return User(
      id: snap.id,
      name: snap.get('name'),
    );
  }
}
