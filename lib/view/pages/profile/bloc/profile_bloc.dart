import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../app/user/save_profile.dart';
import '../../../../domain/user/user_profile.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final String _userId;
  final SaveProfile _saveProfile;

  ProfileBloc({
    required SaveProfile saveProfile,
    required String userId,
  })  : _saveProfile = saveProfile,
        _userId = userId,
        super(const ProfileState.none()) {
    on<_SaveProfile>(_onSave);
  }

  _onSave(_SaveProfile event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.saving());
    await _saveProfile(event.profile, userId: _userId);
    emit(const ProfileState.saved());
  }
}
