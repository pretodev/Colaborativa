import '../adapters/user_datasource.dart';
import '../entities/user.dart';

class CheckUser {
  final UserDatasource _userDatasource;

  CheckUser({
    required UserDatasource userDatasource,
  }) : _userDatasource = userDatasource;

  Stream<User?> call() {
    return _userDatasource.currentUser;
  }
}
