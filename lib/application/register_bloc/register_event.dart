part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.register(RegisterRequest registerRequest) =
      _Register;
}
