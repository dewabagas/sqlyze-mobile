import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request.freezed.dart';
part 'register_request.g.dart';

@freezed
class RegisterRequest with _$RegisterRequest {
  factory RegisterRequest({
    @JsonKey(name: 'full_name') String? fullName,
    String? email,
    String? nis,
    String? password,
    String? role,
    String? msisdn,
    String? birthdate,
    String? gender,
    @JsonKey(name: 'profile_image_url') String? profileImageUrl,
  }) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);
}
