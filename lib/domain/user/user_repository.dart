import 'package:colaborativa_app/domain/user/user_profile.dart';

import 'user.dart';

abstract class UserRepository {
  const UserRepository();

  Stream<User?> get user;

  Future<void> save({
    required UserProfile profile,
    required String userId,
  });
}
