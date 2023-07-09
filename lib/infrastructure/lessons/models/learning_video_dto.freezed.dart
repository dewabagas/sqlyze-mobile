// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_video_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LearningVideoDto _$LearningVideoDtoFromJson(Map<String, dynamic> json) {
  return _LearningVideoDto.fromJson(json);
}

/// @nodoc
mixin _$LearningVideoDto {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'material_id')
  int? get materialId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningVideoDtoCopyWith<LearningVideoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningVideoDtoCopyWith<$Res> {
  factory $LearningVideoDtoCopyWith(
          LearningVideoDto value, $Res Function(LearningVideoDto) then) =
      _$LearningVideoDtoCopyWithImpl<$Res, LearningVideoDto>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'material_id') int? materialId,
      String? title,
      String? url,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$LearningVideoDtoCopyWithImpl<$Res, $Val extends LearningVideoDto>
    implements $LearningVideoDtoCopyWith<$Res> {
  _$LearningVideoDtoCopyWithImpl(this._value, this._then);

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
    Object? url = freezed,
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_LearningVideoDtoCopyWith<$Res>
    implements $LearningVideoDtoCopyWith<$Res> {
  factory _$$_LearningVideoDtoCopyWith(
          _$_LearningVideoDto value, $Res Function(_$_LearningVideoDto) then) =
      __$$_LearningVideoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'material_id') int? materialId,
      String? title,
      String? url,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_LearningVideoDtoCopyWithImpl<$Res>
    extends _$LearningVideoDtoCopyWithImpl<$Res, _$_LearningVideoDto>
    implements _$$_LearningVideoDtoCopyWith<$Res> {
  __$$_LearningVideoDtoCopyWithImpl(
      _$_LearningVideoDto _value, $Res Function(_$_LearningVideoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? materialId = freezed,
    Object? title = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_LearningVideoDto(
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
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
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
class _$_LearningVideoDto extends _LearningVideoDto {
  const _$_LearningVideoDto(
      {this.id,
      @JsonKey(name: 'material_id') this.materialId,
      this.title,
      this.url,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$_LearningVideoDto.fromJson(Map<String, dynamic> json) =>
      _$$_LearningVideoDtoFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'material_id')
  final int? materialId;
  @override
  final String? title;
  @override
  final String? url;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'LearningVideoDto(id: $id, materialId: $materialId, title: $title, url: $url, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningVideoDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.materialId, materialId) ||
                other.materialId == materialId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, materialId, title, url, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningVideoDtoCopyWith<_$_LearningVideoDto> get copyWith =>
      __$$_LearningVideoDtoCopyWithImpl<_$_LearningVideoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningVideoDtoToJson(
      this,
    );
  }
}

abstract class _LearningVideoDto extends LearningVideoDto {
  const factory _LearningVideoDto(
      {final int? id,
      @JsonKey(name: 'material_id') final int? materialId,
      final String? title,
      final String? url,
      final String? createdAt,
      final String? updatedAt}) = _$_LearningVideoDto;
  const _LearningVideoDto._() : super._();

  factory _LearningVideoDto.fromJson(Map<String, dynamic> json) =
      _$_LearningVideoDto.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'material_id')
  int? get materialId;
  @override
  String? get title;
  @override
  String? get url;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_LearningVideoDtoCopyWith<_$_LearningVideoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
