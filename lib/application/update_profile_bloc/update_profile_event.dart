part of 'update_profile_bloc.dart';

@freezed
class UpdateProfileEvent with _$UpdateProfileEvent {
  const factory UpdateProfileEvent.updateProfile(
      ProfileUpdateRequest profileUpdateRequest) = _UpdateProfile;
}
