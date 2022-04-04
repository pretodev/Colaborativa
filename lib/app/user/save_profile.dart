import '../../domain/user/user_profile.dart';

class SaveProfile {
  Future<void> call(
    UserProfile profile, {
    required String userId,
  }) async {
    print('SaveProfile.call()');
    await Future.delayed(const Duration(seconds: 2));
  }
}
