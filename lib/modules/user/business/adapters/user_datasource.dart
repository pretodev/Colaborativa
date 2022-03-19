import '../entities/user.dart';

abstract class UserDatasource {
  const UserDatasource();

  Stream<User?> get currentUser;
}
