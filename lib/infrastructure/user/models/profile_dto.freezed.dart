// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) {
  return _ProfileDto.fromJson(json);
}

/// @nodoc
mixin _$ProfileDto {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get nis => throw _privateConstructorUsedError;
  String? get msisdn => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image_url')
  String? get profileImageUrl => throw _privateConstructorUsedError;
  String? get flag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDtoCopyWith<ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDtoCopyWith<$Res> {
  factory $ProfileDtoCopyWith(
          ProfileDto value, $Res Function(ProfileDto) then) =
      _$ProfileDtoCopyWithImpl<$Res, ProfileDto>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'full_name') String? fullName,
      String? email,
      String? nis,
      String? msisdn,
      String? birthdate,
      String? gender,
      @JsonKey(name: 'profile_image_url') String? profileImageUrl,
      String? flag});
}

/// @nodoc
class _$ProfileDtoCopyWithImpl<$Res, $Val extends ProfileDto>
    implements $ProfileDtoCopyWith<$Res> {
  _$ProfileDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? nis = freezed,
    Object? msisdn = freezed,
    Object? birthdate = freezed,
    Object? gender = freezed,
    Object? profileImageUrl = freezed,
    Object? flag = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      nis: freezed == nis
          ? _value.nis
          : nis // ignore: cast_nullable_to_non_nullable
              as String?,
      msisdn: freezed == msisdn
          ? _value.msisdn
          : msisdn // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileDtoCopyWith<$Res>
    implements $ProfileDtoCopyWith<$Res> {
  factory _$$_ProfileDtoCopyWith(
          _$_ProfileDto value, $Res Function(_$_ProfileDto) then) =
      __$$_ProfileDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'full_name') String? fullName,
      String? email,
      String? nis,
      String? msisdn,
      String? birthdate,
      String? gender,
      @JsonKey(name: 'profile_image_url') String? profileImageUrl,
      String? flag});
}

/// @nodoc
class __$$_ProfileDtoCopyWithImpl<$Res>
    extends _$ProfileDtoCopyWithImpl<$Res, _$_ProfileDto>
    implements _$$_ProfileDtoCopyWith<$Res> {
  __$$_ProfileDtoCopyWithImpl(
      _$_ProfileDto _value, $Res Function(_$_ProfileDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? nis = freezed,
    Object? msisdn = freezed,
    Object? birthdate = freezed,
    Object? gender = freezed,
    Object? profileImageUrl = freezed,
    Object? flag = freezed,
  }) {
    return _then(_$_ProfileDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      nis: freezed == nis
          ? _value.nis
          : nis // ignore: cast_nullable_to_non_nullable
              as String?,
      msisdn: freezed == msisdn
          ? _value.msisdn
          : msisdn // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      flag: freezed == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileDto extends _ProfileDto {
  const _$_ProfileDto(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'full_name') this.fullName,
      this.email,
      this.nis,
      this.msisdn,
      this.birthdate,
      this.gender,
      @JsonKey(name: 'profile_image_url') this.profileImageUrl,
      this.flag})
      : super._();

  factory _$_ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileDtoFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  final String? email;
  @override
  final String? nis;
  @override
  final String? msisdn;
  @override
  final String? birthdate;
  @override
  final String? gender;
  @override
  @JsonKey(name: 'profile_image_url')
  final String? profileImageUrl;
  @override
  final String? flag;

  @override
  String toString() {
    return 'ProfileDto(id: $id, userId: $userId, fullName: $fullName, email: $email, nis: $nis, msisdn: $msisdn, birthdate: $birthdate, gender: $gender, profileImageUrl: $profileImageUrl, flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nis, nis) || other.nis == nis) &&
            (identical(other.msisdn, msisdn) || other.msisdn == msisdn) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, fullName, email, nis,
      msisdn, birthdate, gender, profileImageUrl, flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileDtoCopyWith<_$_ProfileDto> get copyWith =>
      __$$_ProfileDtoCopyWithImpl<_$_ProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileDtoToJson(
      this,
    );
  }
}

abstract class _ProfileDto extends ProfileDto {
  const factory _ProfileDto(
      {final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'full_name') final String? fullName,
      final String? email,
      final String? nis,
      final String? msisdn,
      final String? birthdate,
      final String? gender,
      @JsonKey(name: 'profile_image_url') final String? profileImageUrl,
      final String? flag}) = _$_ProfileDto;
  const _ProfileDto._() : super._();

  factory _ProfileDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileDto.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  String? get email;
  @override
  String? get nis;
  @override
  String? get msisdn;
  @override
  String? get birthdate;
  @override
  String? get gender;
  @override
  @JsonKey(name: 'profile_image_url')
  String? get profileImageUrl;
  @override
  String? get flag;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileDtoCopyWith<_$_ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}
