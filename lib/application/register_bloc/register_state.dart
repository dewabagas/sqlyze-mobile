part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loadInProgress() = _LoadInProgress;
  const factory RegisterState.loadSuccess(User? user) = _LoadSuccess;
  const factory RegisterState.loadFailure(String? message) = _LoadFailure;
}
