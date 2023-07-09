// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_document.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LearningDocument {
  int? get id => throw _privateConstructorUsedError;
  int? get materialId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get documentType => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LearningDocumentCopyWith<LearningDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningDocumentCopyWith<$Res> {
  factory $LearningDocumentCopyWith(
          LearningDocument value, $Res Function(LearningDocument) then) =
      _$LearningDocumentCopyWithImpl<$Res, LearningDocument>;
  @useResult
  $Res call(
      {int? id,
      int? materialId,
      String? title,
      String? documentType,
      String? url,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$LearningDocumentCopyWithImpl<$Res, $Val extends LearningDocument>
    implements $LearningDocumentCopyWith<$Res> {
  _$LearningDocumentCopyWithImpl(this._value, this._then);

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
abstract class _$$_LearningDocumentCopyWith<$Res>
    implements $LearningDocumentCopyWith<$Res> {
  factory _$$_LearningDocumentCopyWith(
          _$_LearningDocument value, $Res Function(_$_LearningDocument) then) =
      __$$_LearningDocumentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? materialId,
      String? title,
      String? documentType,
      String? url,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_LearningDocumentCopyWithImpl<$Res>
    extends _$LearningDocumentCopyWithImpl<$Res, _$_LearningDocument>
    implements _$$_LearningDocumentCopyWith<$Res> {
  __$$_LearningDocumentCopyWithImpl(
      _$_LearningDocument _value, $Res Function(_$_LearningDocument) _then)
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
    return _then(_$_LearningDocument(
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

class _$_LearningDocument implements _LearningDocument {
  _$_LearningDocument(
      {this.id,
      this.materialId,
      this.title,
      this.documentType,
      this.url,
      this.createdAt,
      this.updatedAt});

  @override
  final int? id;
  @override
  final int? materialId;
  @override
  final String? title;
  @override
  final String? documentType;
  @override
  final String? url;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'LearningDocument(id: $id, materialId: $materialId, title: $title, documentType: $documentType, url: $url, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningDocument &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, materialId, title,
      documentType, url, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningDocumentCopyWith<_$_LearningDocument> get copyWith =>
      __$$_LearningDocumentCopyWithImpl<_$_LearningDocument>(this, _$identity);
}

abstract class _LearningDocument implements LearningDocument {
  factory _LearningDocument(
      {final int? id,
      final int? materialId,
      final String? title,
      final String? documentType,
      final String? url,
      final String? createdAt,
      final String? updatedAt}) = _$_LearningDocument;

  @override
  int? get id;
  @override
  int? get materialId;
  @override
  String? get title;
  @override
  String? get documentType;
  @override
  String? get url;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_LearningDocumentCopyWith<_$_LearningDocument> get copyWith =>
      throw _privateConstructorUsedError;
}
