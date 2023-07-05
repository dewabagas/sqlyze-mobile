import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';

@freezed
class UserProfile with _$UserProfile {
  factory UserProfile({
    int? id,
    int? userId,
    String? fullName,
    String? email,
    String? nis,
    String? msisdn,
    String? birthdate,
    String? gender,
    String? profileImageUrl,
  }) = _UserProfile;
}
