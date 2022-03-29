import 'user.dart';

abstract class UserRepository {
  const UserRepository();

  Stream<User?> get user;
}
