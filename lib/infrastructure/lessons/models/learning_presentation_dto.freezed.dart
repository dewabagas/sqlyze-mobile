// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_presentation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LearningPresentationDto _$LearningPresentationDtoFromJson(
    Map<String, dynamic> json) {
  return _LearningPresentationDto.fromJson(json);
}

/// @nodoc
mixin _$LearningPresentationDto {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'material_id')
  int? get materialId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_url')
  String? get fileUrl => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningPresentationDtoCopyWith<LearningPresentationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningPresentationDtoCopyWith<$Res> {
  factory $LearningPresentationDtoCopyWith(LearningPresentationDto value,
          $Res Function(LearningPresentationDto) then) =
      _$LearningPresentationDtoCopyWithImpl<$Res, LearningPresentationDto>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'material_id') int? materialId,
      String? title,
      @JsonKey(name: 'file_url') String? fileUrl,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$LearningPresentationDtoCopyWithImpl<$Res,
        $Val extends LearningPresentationDto>
    implements $LearningPresentationDtoCopyWith<$Res> {
  _$LearningPresentationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? materialId = freezed,
    Object? title = freezed,
    Object? fileUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      materialId: freezed == materialId
          ? _value.materialId
          : materialId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LearningPresentationDtoCopyWith<$Res>
    implements $LearningPresentationDtoCopyWith<$Res> {
  factory _$$_LearningPresentationDtoCopyWith(_$_LearningPresentationDto value,
          $Res Function(_$_LearningPresentationDto) then) =
      __$$_LearningPresentationDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'material_id') int? materialId,
      String? title,
      @JsonKey(name: 'file_url') String? fileUrl,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_LearningPresentationDtoCopyWithImpl<$Res>
    extends _$LearningPresentationDtoCopyWithImpl<$Res,
        _$_LearningPresentationDto>
    implements _$$_LearningPresentationDtoCopyWith<$Res> {
  __$$_LearningPresentationDtoCopyWithImpl(_$_LearningPresentationDto _value,
      $Res Function(_$_LearningPresentationDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? materialId = freezed,
    Object? title = freezed,
    Object? fileUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_LearningPresentationDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      materialId: freezed == materialId
          ? _value.materialId
          : materialId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      fileUrl: freezed == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LearningPresentationDto extends _LearningPresentationDto {
  const _$_LearningPresentationDto(
      {this.id,
      @JsonKey(name: 'material_id') this.materialId,
      this.title,
      @JsonKey(name: 'file_url') this.fileUrl,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$_LearningPresentationDto.fromJson(Map<String, dynamic> json) =>
      _$$_LearningPresentationDtoFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'material_id')
  final int? materialId;
  @override
  final String? title;
  @override
  @JsonKey(name: 'file_url')
  final String? fileUrl;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'LearningPresentationDto(id: $id, materialId: $materialId, title: $title, fileUrl: $fileUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningPresentationDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.materialId, materialId) ||
                other.materialId == materialId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, materialId, title, fileUrl, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningPresentationDtoCopyWith<_$_LearningPresentationDto>
      get copyWith =>
          __$$_LearningPresentationDtoCopyWithImpl<_$_LearningPresentationDto>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningPresentationDtoToJson(
      this,
    );
  }
}

abstract class _LearningPresentationDto extends LearningPresentationDto {
  const factory _LearningPresentationDto(
      {final int? id,
      @JsonKey(name: 'material_id') final int? materialId,
      final String? title,
      @JsonKey(name: 'file_url') final String? fileUrl,
      final String? createdAt,
      final String? updatedAt}) = _$_LearningPresentationDto;
  const _LearningPresentationDto._() : super._();

  factory _LearningPresentationDto.fromJson(Map<String, dynamic> json) =
      _$_LearningPresentationDto.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'material_id')
  int? get materialId;
  @override
  String? get title;
  @override
  @JsonKey(name: 'file_url')
  String? get fileUrl;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_LearningPresentationDtoCopyWith<_$_LearningPresentationDto>
      get copyWith => throw _privateConstructorUsedError;
}
