// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lesson_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LessonDetail {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get materialType => throw _privateConstructorUsedError;
  bool? get isLocked => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  LearningVideo? get video => throw _privateConstructorUsedError;
  LearningPodcast? get podcast => throw _privateConstructorUsedError;
  LearningDocument? get learningDocument => throw _privateConstructorUsedError;
  LearningPresentation? get learningPresentation =>
      throw _privateConstructorUsedError;
  List<LearningStep>? get learningSteps => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LessonDetailCopyWith<LessonDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonDetailCopyWith<$Res> {
  factory $LessonDetailCopyWith(
          LessonDetail value, $Res Function(LessonDetail) then) =
      _$LessonDetailCopyWithImpl<$Res, LessonDetail>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      int? materialType,
      bool? isLocked,
      String? createdAt,
      String? updatedAt,
      LearningVideo? video,
      LearningPodcast? podcast,
      LearningDocument? learningDocument,
      LearningPresentation? learningPresentation,
      List<LearningStep>? learningSteps});

  $LearningVideoCopyWith<$Res>? get video;
  $LearningPodcastCopyWith<$Res>? get podcast;
  $LearningDocumentCopyWith<$Res>? get learningDocument;
  $LearningPresentationCopyWith<$Res>? get learningPresentation;
}

/// @nodoc
class _$LessonDetailCopyWithImpl<$Res, $Val extends LessonDetail>
    implements $LessonDetailCopyWith<$Res> {
  _$LessonDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? materialType = freezed,
    Object? isLocked = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? video = freezed,
    Object? podcast = freezed,
    Object? learningDocument = freezed,
    Object? learningPresentation = freezed,
    Object? learningSteps = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      materialType: freezed == materialType
          ? _value.materialType
          : materialType // ignore: cast_nullable_to_non_nullable
              as int?,
      isLocked: freezed == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as LearningVideo?,
      podcast: freezed == podcast
          ? _value.podcast
          : podcast // ignore: cast_nullable_to_non_nullable
              as LearningPodcast?,
      learningDocument: freezed == learningDocument
          ? _value.learningDocument
          : learningDocument // ignore: cast_nullable_to_non_nullable
              as LearningDocument?,
      learningPresentation: freezed == learningPresentation
          ? _value.learningPresentation
          : learningPresentation // ignore: cast_nullable_to_non_nullable
              as LearningPresentation?,
      learningSteps: freezed == learningSteps
          ? _value.learningSteps
          : learningSteps // ignore: cast_nullable_to_non_nullable
              as List<LearningStep>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LearningVideoCopyWith<$Res>? get video {
    if (_value.video == null) {
      return null;
    }

    return $LearningVideoCopyWith<$Res>(_value.video!, (value) {
      return _then(_value.copyWith(video: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LearningPodcastCopyWith<$Res>? get podcast {
    if (_value.podcast == null) {
      return null;
    }

    return $LearningPodcastCopyWith<$Res>(_value.podcast!, (value) {
      return _then(_value.copyWith(podcast: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LearningDocumentCopyWith<$Res>? get learningDocument {
    if (_value.learningDocument == null) {
      return null;
    }

    return $LearningDocumentCopyWith<$Res>(_value.learningDocument!, (value) {
      return _then(_value.copyWith(learningDocument: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LearningPresentationCopyWith<$Res>? get learningPresentation {
    if (_value.learningPresentation == null) {
      return null;
    }

    return $LearningPresentationCopyWith<$Res>(_value.learningPresentation!,
        (value) {
      return _then(_value.copyWith(learningPresentation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LessonDetailCopyWith<$Res>
    implements $LessonDetailCopyWith<$Res> {
  factory _$$_LessonDetailCopyWith(
          _$_LessonDetail value, $Res Function(_$_LessonDetail) then) =
      __$$_LessonDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? description,
      int? materialType,
      bool? isLocked,
      String? createdAt,
      String? updatedAt,
      LearningVideo? video,
      LearningPodcast? podcast,
      LearningDocument? learningDocument,
      LearningPresentation? learningPresentation,
      List<LearningStep>? learningSteps});

  @override
  $LearningVideoCopyWith<$Res>? get video;
  @override
  $LearningPodcastCopyWith<$Res>? get podcast;
  @override
  $LearningDocumentCopyWith<$Res>? get learningDocument;
  @override
  $LearningPresentationCopyWith<$Res>? get learningPresentation;
}

/// @nodoc
class __$$_LessonDetailCopyWithImpl<$Res>
    extends _$LessonDetailCopyWithImpl<$Res, _$_LessonDetail>
    implements _$$_LessonDetailCopyWith<$Res> {
  __$$_LessonDetailCopyWithImpl(
      _$_LessonDetail _value, $Res Function(_$_LessonDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? materialType = freezed,
    Object? isLocked = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? video = freezed,
    Object? podcast = freezed,
    Object? learningDocument = freezed,
    Object? learningPresentation = freezed,
    Object? learningSteps = freezed,
  }) {
    return _then(_$_LessonDetail(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      materialType: freezed == materialType
          ? _value.materialType
          : materialType // ignore: cast_nullable_to_non_nullable
              as int?,
      isLocked: freezed == isLocked
          ? _value.isLocked
          : isLocked // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as LearningVideo?,
      podcast: freezed == podcast
          ? _value.podcast
          : podcast // ignore: cast_nullable_to_non_nullable
              as LearningPodcast?,
      learningDocument: freezed == learningDocument
          ? _value.learningDocument
          : learningDocument // ignore: cast_nullable_to_non_nullable
              as LearningDocument?,
      learningPresentation: freezed == learningPresentation
          ? _value.learningPresentation
          : learningPresentation // ignore: cast_nullable_to_non_nullable
              as LearningPresentation?,
      learningSteps: freezed == learningSteps
          ? _value._learningSteps
          : learningSteps // ignore: cast_nullable_to_non_nullable
              as List<LearningStep>?,
    ));
  }
}

/// @nodoc

class _$_LessonDetail implements _LessonDetail {
  _$_LessonDetail(
      {this.id,
      this.title,
      this.description,
      this.materialType,
      this.isLocked,
      this.createdAt,
      this.updatedAt,
      this.video,
      this.podcast,
      this.learningDocument,
      this.learningPresentation,
      final List<LearningStep>? learningSteps})
      : _learningSteps = learningSteps;

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? materialType;
  @override
  final bool? isLocked;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final LearningVideo? video;
  @override
  final LearningPodcast? podcast;
  @override
  final LearningDocument? learningDocument;
  @override
  final LearningPresentation? learningPresentation;
  final List<LearningStep>? _learningSteps;
  @override
  List<LearningStep>? get learningSteps {
    final value = _learningSteps;
    if (value == null) return null;
    if (_learningSteps is EqualUnmodifiableListView) return _learningSteps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LessonDetail(id: $id, title: $title, description: $description, materialType: $materialType, isLocked: $isLocked, createdAt: $createdAt, updatedAt: $updatedAt, video: $video, podcast: $podcast, learningDocument: $learningDocument, learningPresentation: $learningPresentation, learningSteps: $learningSteps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonDetail &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.materialType, materialType) ||
                other.materialType == materialType) &&
            (identical(other.isLocked, isLocked) ||
                other.isLocked == isLocked) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.podcast, podcast) || other.podcast == podcast) &&
            (identical(other.learningDocument, learningDocument) ||
                other.learningDocument == learningDocument) &&
            (identical(other.learningPresentation, learningPresentation) ||
                other.learningPresentation == learningPresentation) &&
            const DeepCollectionEquality()
                .equals(other._learningSteps, _learningSteps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      materialType,
      isLocked,
      createdAt,
      updatedAt,
      video,
      podcast,
      learningDocument,
      learningPresentation,
      const DeepCollectionEquality().hash(_learningSteps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonDetailCopyWith<_$_LessonDetail> get copyWith =>
      __$$_LessonDetailCopyWithImpl<_$_LessonDetail>(this, _$identity);
}

abstract class _LessonDetail implements LessonDetail {
  factory _LessonDetail(
      {final int? id,
      final String? title,
      final String? description,
      final int? materialType,
      final bool? isLocked,
      final String? createdAt,
      final String? updatedAt,
      final LearningVideo? video,
      final LearningPodcast? podcast,
      final LearningDocument? learningDocument,
      final LearningPresentation? learningPresentation,
      final List<LearningStep>? learningSteps}) = _$_LessonDetail;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get materialType;
  @override
  bool? get isLocked;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  LearningVideo? get video;
  @override
  LearningPodcast? get podcast;
  @override
  LearningDocument? get learningDocument;
  @override
  LearningPresentation? get learningPresentation;
  @override
  List<LearningStep>? get learningSteps;
  @override
  @JsonKey(ignore: true)
  _$$_LessonDetailCopyWith<_$_LessonDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
