import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/auth/entities/user.dart';

part 'login_dto.freezed.dart';

part 'login_dto.g.dart';

@freezed
class LoginDto with _$LoginDto {
  const LoginDto._();

  const factory LoginDto(
      {int? id, String? email, String? password, String? role}) = _LoginDto;

  factory LoginDto.fromDomain(User? user) {
    return LoginDto(
      id: user?.id,
      email: user?.email,
      password: user?.password,
      role: user?.role,
    );
  }

  User toDomain() {
    return User(
      id: id,
      email: email,
      password: password,
      role: role,
    );
  }

  factory LoginDto.fromJson(Map<String, Object?> json) =>
      _$LoginDtoFromJson(json);

  static List<User> fromJsonList(List<dynamic> list) {
    List<User> result = [];

    if (list.isNotEmpty) {
      for (var object in list) {
        result
            .add(LoginDto.fromJson(object as Map<String, Object?>).toDomain());
      }
    }
    return result;
  }
}
