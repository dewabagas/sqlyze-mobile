import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';

part 'profile_update_request.freezed.dart';
part 'profile_update_request.g.dart';

@freezed
class ProfileUpdateRequest with _$ProfileUpdateRequest {
  factory ProfileUpdateRequest({
    @JsonKey(name: 'full_name') String? fullName,
    String? nis,
    String? email,
    String? msisdn,
    String? birthdate,
    String? gender,
    @JsonKey(name: 'profile_image') String? profileImage,
  }) = _ProfileUpdateRequest;

  factory ProfileUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$ProfileUpdateRequestFromJson(json);
}
