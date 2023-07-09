// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_video.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LearningVideo {
  int? get id => throw _privateConstructorUsedError;
  int? get materialId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LearningVideoCopyWith<LearningVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningVideoCopyWith<$Res> {
  factory $LearningVideoCopyWith(
          LearningVideo value, $Res Function(LearningVideo) then) =
      _$LearningVideoCopyWithImpl<$Res, LearningVideo>;
  @useResult
  $Res call(
      {int? id,
      int? materialId,
      String? title,
      String? url,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$LearningVideoCopyWithImpl<$Res, $Val extends LearningVideo>
    implements $LearningVideoCopyWith<$Res> {
  _$LearningVideoCopyWithImpl(this._value, this._then);

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
abstract class _$$_LearningVideoCopyWith<$Res>
    implements $LearningVideoCopyWith<$Res> {
  factory _$$_LearningVideoCopyWith(
          _$_LearningVideo value, $Res Function(_$_LearningVideo) then) =
      __$$_LearningVideoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? materialId,
      String? title,
      String? url,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_LearningVideoCopyWithImpl<$Res>
    extends _$LearningVideoCopyWithImpl<$Res, _$_LearningVideo>
    implements _$$_LearningVideoCopyWith<$Res> {
  __$$_LearningVideoCopyWithImpl(
      _$_LearningVideo _value, $Res Function(_$_LearningVideo) _then)
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
    return _then(_$_LearningVideo(
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

class _$_LearningVideo implements _LearningVideo {
  _$_LearningVideo(
      {this.id,
      this.materialId,
      this.title,
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
  final String? url;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'LearningVideo(id: $id, materialId: $materialId, title: $title, url: $url, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningVideo &&
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

  @override
  int get hashCode => Object.hash(
      runtimeType, id, materialId, title, url, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningVideoCopyWith<_$_LearningVideo> get copyWith =>
      __$$_LearningVideoCopyWithImpl<_$_LearningVideo>(this, _$identity);
}

abstract class _LearningVideo implements LearningVideo {
  factory _LearningVideo(
      {final int? id,
      final int? materialId,
      final String? title,
      final String? url,
      final String? createdAt,
      final String? updatedAt}) = _$_LearningVideo;

  @override
  int? get id;
  @override
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
  _$$_LearningVideoCopyWith<_$_LearningVideo> get copyWith =>
      throw _privateConstructorUsedError;
}
