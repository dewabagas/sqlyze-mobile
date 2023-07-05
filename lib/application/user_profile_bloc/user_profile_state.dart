part of 'user_profile_bloc.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState.initial() = _Initial;
  const factory UserProfileState.loadInProgress() = _LoadInProgress;
  const factory UserProfileState.loadSuccess(UserProfile? user) = _LoadSuccess;
  const factory UserProfileState.loadFailure(String? message) = _LoadFailure;
}
