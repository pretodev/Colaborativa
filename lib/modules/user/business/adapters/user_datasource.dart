import '../entities/user_status.dart';

abstract class UserDatasource {
  const UserDatasource();

  Stream<UserStatus> get userStatus;
}
