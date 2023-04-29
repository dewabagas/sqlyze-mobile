part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loadInProgress() = _LoadInProgress;
  const factory AuthState.loadSuccess(User? user) = _LoadSuccess;
  const factory AuthState.loadFailure(String? message) = _LoadFailure;
}
