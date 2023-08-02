part of 'update_profile_bloc.dart';

@freezed
class UpdateProfileState with _$UpdateProfileState {
  const factory UpdateProfileState.initial() = _Initial;
  const factory UpdateProfileState.loadInProgress() = _LoadInProgress;
  const factory UpdateProfileState.loadSuccess(String? response) = _LoadSuccess;
  const factory UpdateProfileState.loadFailure(String? message) = _LoadFailure;
}
