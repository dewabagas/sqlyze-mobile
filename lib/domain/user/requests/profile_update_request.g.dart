// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileUpdateRequest _$$_ProfileUpdateRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileUpdateRequest(
      fullName: json['full_name'] as String?,
      nis: json['nis'] as String?,
      email: json['email'] as String?,
      msisdn: json['msisdn'] as String?,
      birthdate: json['birthdate'] as String?,
      gender: json['gender'] as String?,
      profileImage: json['profile_image'] as String?,
    );

Map<String, dynamic> _$$_ProfileUpdateRequestToJson(
        _$_ProfileUpdateRequest instance) =>
    <String, dynamic>{
      'full_name': instance.fullName,
      'nis': instance.nis,
      'email': instance.email,
      'msisdn': instance.msisdn,
      'birthdate': instance.birthdate,
      'gender': instance.gender,
      'profile_image': instance.profileImage,
    };
