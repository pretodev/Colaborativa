import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/ethnicity_enum.dart';
import '../enums/gender_enum.dart';

part 'user_profile.freezed.dart';

@freezed
class UserProfile with _$UserProfile {
  const UserProfile._();

  const factory UserProfile({
    required String name,
    required GenderEnum gender,
    required EthnicityEnum ethnicity,
    required DateTime birthday,
  }) = _UserProfile;
}
