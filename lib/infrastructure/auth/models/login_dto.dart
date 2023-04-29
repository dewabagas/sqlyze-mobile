import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/auth/entities/user.dart';

part 'login_dto.freezed.dart';

part 'login_dto.g.dart';

@freezed
class LoginDto with _$LoginDto {
  const LoginDto._();

  const factory LoginDto(
      {int? id,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'email') String? email,
      String? nis,
      @JsonKey(name: 'role_id') int? roleId,
      @JsonKey(name: 'class_id') int? classId,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'msisdn') int? msisdn,
      String? flag}) = _LoginDto;

  factory LoginDto.fromDomain(User? user) {
    return LoginDto(
      id: user?.id,
      fullName: user?.fullName,
      email: user?.email,
      nis: user?.nis,
      roleId: user?.roleId,
      classId: user?.classId,
      profileImage: user?.profileImage,
      msisdn: user?.msisdn,
    );
  }

  User toDomain() {
    return User(
      id: id,
      fullName: fullName,
      email: email,
      nis: nis,
      roleId: roleId,
      classId: classId,
      profileImage: profileImage,
      msisdn: msisdn,
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
