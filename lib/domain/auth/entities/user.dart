import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User({
    int? id,
    String? fullName,
    String? email,
    String? nis,
    int? roleId,
    int? classId,
    String? profileImage,
    int? msisdn,
  }) = _User;
}
