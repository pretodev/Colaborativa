import '../entities/user_profile.dart';

class ProfileMapper {
  static Map<String, dynamic> toMap(UserProfile user) {
    return {
      'name': user.name,
      'ethnicity': user.ethnicity.name,
      'gender': user.gender.name,
      'birthday': "${user.birthday.toIso8601String()}-03:00",
    };
  }
}
