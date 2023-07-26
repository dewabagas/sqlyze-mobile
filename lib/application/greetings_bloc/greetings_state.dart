part of 'greetings_bloc.dart';

@freezed
abstract class GreetingsState with _$GreetingsState {
  const factory GreetingsState.initial() = _Initial;
  const factory GreetingsState.loadInProgress() = _LoadInProgress;
  const factory GreetingsState.loadSuccess(String greetings) = _LoadSuccess;
  const factory GreetingsState.loadFailure(String greetings) = _LoadFailure;
}
