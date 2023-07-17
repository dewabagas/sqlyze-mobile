// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterRequest _$$_RegisterRequestFromJson(Map<String, dynamic> json) =>
    _$_RegisterRequest(
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      nis: json['nis'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
      msisdn: json['msisdn'] as String?,
      birthdate: json['birthdate'] as String?,
      gender: json['gender'] as String?,
      profileImageUrl: json['profile_image_url'] as String?,
    );

Map<String, dynamic> _$$_RegisterRequestToJson(_$_RegisterRequest instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'email': instance.email,
      'nis': instance.nis,
      'password': instance.password,
      'role': instance.role,
      'msisdn': instance.msisdn,
      'birthdate': instance.birthdate,
      'gender': instance.gender,
      'profile_image_url': instance.profileImageUrl,
    };
