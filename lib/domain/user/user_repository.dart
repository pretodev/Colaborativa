import 'user.dart';
import 'user_profile.dart';

abstract class UserRepository {
  const UserRepository();

  Stream<User?> get user;

  Future<void> save({
    required UserProfile profile,
    required String userId,
  });

  Future<void> logout();
}
