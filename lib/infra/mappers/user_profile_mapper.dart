import 'package:colaborativa_app/domain/user/user_profile.dart';

class UserProfileMapper {
  static Map<String, dynamic> toFirestore(UserProfile profile) {
    return {
      'name': profile.name,
      'gender': profile.gender.name,
      'breed': profile.breed.name,
      'birthday': profile.bithday,
    };
  }
}
