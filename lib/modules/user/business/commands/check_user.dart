import '../entities/user.dart';

class CheckUser {
  Stream<User?> call() async* {
    Future.delayed(const Duration(seconds: 3));
    yield null;
  }
}
