part of 'splashscreen_bloc.dart';

@freezed
class SplashscreenState with _$SplashscreenState {
  const factory SplashscreenState.initial() = _Initial;
  const factory SplashscreenState.loadInProgress() = _LoadInProgress;
  const factory SplashscreenState.loadSuccess(String routerName) = _LoadSuccess;
  const factory SplashscreenState.loadFailure() = _LoadFailure;
}
