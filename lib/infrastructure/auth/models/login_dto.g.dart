// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginDto _$$_LoginDtoFromJson(Map<String, dynamic> json) => _$_LoginDto(
      id: json['id'] as int?,
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      nis: json['nis'] as String?,
      roleId: json['role_id'] as int?,
      classId: json['class_id'] as int?,
      profileImage: json['profile_image'] as String?,
      msisdn: json['msisdn'] as int?,
      flag: json['flag'] as String?,
    );

Map<String, dynamic> _$$_LoginDtoToJson(_$_LoginDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'email': instance.email,
      'nis': instance.nis,
      'role_id': instance.roleId,
      'class_id': instance.classId,
      'profile_image': instance.profileImage,
      'msisdn': instance.msisdn,
      'flag': instance.flag,
    };
