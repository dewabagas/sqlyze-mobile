// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_document_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LearningDocumentDto _$LearningDocumentDtoFromJson(Map<String, dynamic> json) {
  return _LearningDocumentDto.fromJson(json);
}

/// @nodoc
mixin _$LearningDocumentDto {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'material_id')
  int? get materialId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'document_type')
  String? get documentType => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningDocumentDtoCopyWith<LearningDocumentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningDocumentDtoCopyWith<$Res> {
  factory $LearningDocumentDtoCopyWith(
          LearningDocumentDto value, $Res Function(LearningDocumentDto) then) =
      _$LearningDocumentDtoCopyWithImpl<$Res, LearningDocumentDto>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'material_id') int? materialId,
      String? title,
      @JsonKey(name: 'document_type') String? documentType,
      String? url,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$LearningDocumentDtoCopyWithImpl<$Res, $Val extends LearningDocumentDto>
    implements $LearningDocumentDtoCopyWith<$Res> {
  _$LearningDocumentDtoCopyWithImpl(this._value, this._then);

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
    Object? documentType = freezed,
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
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_LearningDocumentDtoCopyWith<$Res>
    implements $LearningDocumentDtoCopyWith<$Res> {
  factory _$$_LearningDocumentDtoCopyWith(_$_LearningDocumentDto value,
          $Res Function(_$_LearningDocumentDto) then) =
      __$$_LearningDocumentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'material_id') int? materialId,
      String? title,
      @JsonKey(name: 'document_type') String? documentType,
      String? url,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_LearningDocumentDtoCopyWithImpl<$Res>
    extends _$LearningDocumentDtoCopyWithImpl<$Res, _$_LearningDocumentDto>
    implements _$$_LearningDocumentDtoCopyWith<$Res> {
  __$$_LearningDocumentDtoCopyWithImpl(_$_LearningDocumentDto _value,
      $Res Function(_$_LearningDocumentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? materialId = freezed,
    Object? title = freezed,
    Object? documentType = freezed,
    Object? url = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_LearningDocumentDto(
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
      documentType: freezed == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
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
class _$_LearningDocumentDto extends _LearningDocumentDto {
  const _$_LearningDocumentDto(
      {this.id,
      @JsonKey(name: 'material_id') this.materialId,
      this.title,
      @JsonKey(name: 'document_type') this.documentType,
      this.url,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$_LearningDocumentDto.fromJson(Map<String, dynamic> json) =>
      _$$_LearningDocumentDtoFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'material_id')
  final int? materialId;
  @override
  final String? title;
  @override
  @JsonKey(name: 'document_type')
  final String? documentType;
  @override
  final String? url;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'LearningDocumentDto(id: $id, materialId: $materialId, title: $title, documentType: $documentType, url: $url, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningDocumentDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.materialId, materialId) ||
                other.materialId == materialId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, materialId, title,
      documentType, url, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningDocumentDtoCopyWith<_$_LearningDocumentDto> get copyWith =>
      __$$_LearningDocumentDtoCopyWithImpl<_$_LearningDocumentDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningDocumentDtoToJson(
      this,
    );
  }
}

abstract class _LearningDocumentDto extends LearningDocumentDto {
  const factory _LearningDocumentDto(
      {final int? id,
      @JsonKey(name: 'material_id') final int? materialId,
      final String? title,
      @JsonKey(name: 'document_type') final String? documentType,
      final String? url,
      final String? createdAt,
      final String? updatedAt}) = _$_LearningDocumentDto;
  const _LearningDocumentDto._() : super._();

  factory _LearningDocumentDto.fromJson(Map<String, dynamic> json) =
      _$_LearningDocumentDto.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'material_id')
  int? get materialId;
  @override
  String? get title;
  @override
  @JsonKey(name: 'document_type')
  String? get documentType;
  @override
  String? get url;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_LearningDocumentDtoCopyWith<_$_LearningDocumentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
