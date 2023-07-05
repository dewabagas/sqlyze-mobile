// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileDto _$$_ProfileDtoFromJson(Map<String, dynamic> json) =>
    _$_ProfileDto(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      nis: json['nis'] as String?,
      msisdn: json['msisdn'] as String?,
      birthdate: json['birthdate'] as String?,
      gender: json['gender'] as String?,
      profileImageUrl: json['profile_image_url'] as String?,
      flag: json['flag'] as String?,
    );

Map<String, dynamic> _$$_ProfileDtoToJson(_$_ProfileDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'full_name': instance.fullName,
      'email': instance.email,
      'nis': instance.nis,
      'msisdn': instance.msisdn,
      'birthdate': instance.birthdate,
      'gender': instance.gender,
      'profile_image_url': instance.profileImageUrl,
      'flag': instance.flag,
    };
