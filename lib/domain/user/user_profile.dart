import 'package:colaborativa_app/domain/user/breed.dart';
import 'package:colaborativa_app/domain/user/gender.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';

@freezed
class UserProfile with _$UserProfile {
  const UserProfile._();

  const factory UserProfile({
    required String name,
    required DateTime bithday,
    required Gender gender,
    required Breed breed,
  }) = _UserProfile;
}
