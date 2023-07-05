import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sqlyze/domain/auth/entities/user.dart';
import 'package:sqlyze/domain/user/entities/user_profile.dart';

part 'profile_dto.freezed.dart';

part 'profile_dto.g.dart';

@freezed
class ProfileDto with _$ProfileDto {
  const ProfileDto._();
  const factory ProfileDto(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'full_name') String? fullName,
      String? email,
      String? nis,
      String? msisdn,
      String? birthdate,
      String? gender,
      @JsonKey(name: 'profile_image_url') String? profileImageUrl,
      String? flag}) = _ProfileDto;

  factory ProfileDto.fromDomain(UserProfile? user) {
    return ProfileDto(
      id: user?.id,
      userId: user?.userId,
      fullName: user?.fullName,
      email: user?.email,
      nis: user?.nis,
      msisdn: user?.msisdn,
      birthdate: user?.birthdate,
      gender: user?.gender,
      profileImageUrl: user?.profileImageUrl,
    );
  }

  UserProfile toDomain() {
    return UserProfile(
      id: id,
      userId: userId,
      fullName: fullName,
      email: email,
      nis: nis,
      msisdn: msisdn,
      birthdate: birthdate,
      gender: gender,
      profileImageUrl: profileImageUrl,
    );
  }

  factory ProfileDto.fromJson(Map<String, Object?> json) =>
      _$ProfileDtoFromJson(json);

  static List<UserProfile> fromJsonList(List<dynamic> list) {
    List<UserProfile> result = [];

    if (list.isNotEmpty) {
      for (var object in list) {
        result.add(
            ProfileDto.fromJson(object as Map<String, Object?>).toDomain());
      }
    }
    return result;
  }
}
