part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const ProfileState._();

  const factory ProfileState.none() = _None;

  const factory ProfileState.saving() = _Saving;

  const factory ProfileState.saved() = _Saved;

  const factory ProfileState.error(String error) = _Error;

  bool get isSaving => this is _Saving;
}
