part of 'greetings_bloc.dart';

@freezed
class GreetingsEvent with _$GreetingsEvent {
  const factory GreetingsEvent.show() = _ShowGreetings;
}
