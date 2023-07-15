// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'learning_analytic_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LearningAnalyticDto _$LearningAnalyticDtoFromJson(Map<String, dynamic> json) {
  return _LearningAnalyticDto.fromJson(json);
}

/// @nodoc
mixin _$LearningAnalyticDto {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_quizzes_taken')
  int? get totalQuizzesTaken => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_score')
  int? get totalScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_correct_answers')
  int? get totalCorrectAnswers => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_incorrect_answers')
  int? get totalIncorrectAnswers => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_duration')
  String? get totalDuration => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LearningAnalyticDtoCopyWith<LearningAnalyticDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LearningAnalyticDtoCopyWith<$Res> {
  factory $LearningAnalyticDtoCopyWith(
          LearningAnalyticDto value, $Res Function(LearningAnalyticDto) then) =
      _$LearningAnalyticDtoCopyWithImpl<$Res, LearningAnalyticDto>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'total_quizzes_taken') int? totalQuizzesTaken,
      @JsonKey(name: 'total_score') int? totalScore,
      @JsonKey(name: 'total_correct_answers') int? totalCorrectAnswers,
      @JsonKey(name: 'total_incorrect_answers') int? totalIncorrectAnswers,
      @JsonKey(name: 'total_duration') String? totalDuration,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$LearningAnalyticDtoCopyWithImpl<$Res, $Val extends LearningAnalyticDto>
    implements $LearningAnalyticDtoCopyWith<$Res> {
  _$LearningAnalyticDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? totalQuizzesTaken = freezed,
    Object? totalScore = freezed,
    Object? totalCorrectAnswers = freezed,
    Object? totalIncorrectAnswers = freezed,
    Object? totalDuration = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      totalQuizzesTaken: freezed == totalQuizzesTaken
          ? _value.totalQuizzesTaken
          : totalQuizzesTaken // ignore: cast_nullable_to_non_nullable
              as int?,
      totalScore: freezed == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCorrectAnswers: freezed == totalCorrectAnswers
          ? _value.totalCorrectAnswers
          : totalCorrectAnswers // ignore: cast_nullable_to_non_nullable
              as int?,
      totalIncorrectAnswers: freezed == totalIncorrectAnswers
          ? _value.totalIncorrectAnswers
          : totalIncorrectAnswers // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDuration: freezed == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_LearningAnalyticDtoCopyWith<$Res>
    implements $LearningAnalyticDtoCopyWith<$Res> {
  factory _$$_LearningAnalyticDtoCopyWith(_$_LearningAnalyticDto value,
          $Res Function(_$_LearningAnalyticDto) then) =
      __$$_LearningAnalyticDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'total_quizzes_taken') int? totalQuizzesTaken,
      @JsonKey(name: 'total_score') int? totalScore,
      @JsonKey(name: 'total_correct_answers') int? totalCorrectAnswers,
      @JsonKey(name: 'total_incorrect_answers') int? totalIncorrectAnswers,
      @JsonKey(name: 'total_duration') String? totalDuration,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_LearningAnalyticDtoCopyWithImpl<$Res>
    extends _$LearningAnalyticDtoCopyWithImpl<$Res, _$_LearningAnalyticDto>
    implements _$$_LearningAnalyticDtoCopyWith<$Res> {
  __$$_LearningAnalyticDtoCopyWithImpl(_$_LearningAnalyticDto _value,
      $Res Function(_$_LearningAnalyticDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? totalQuizzesTaken = freezed,
    Object? totalScore = freezed,
    Object? totalCorrectAnswers = freezed,
    Object? totalIncorrectAnswers = freezed,
    Object? totalDuration = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_LearningAnalyticDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      totalQuizzesTaken: freezed == totalQuizzesTaken
          ? _value.totalQuizzesTaken
          : totalQuizzesTaken // ignore: cast_nullable_to_non_nullable
              as int?,
      totalScore: freezed == totalScore
          ? _value.totalScore
          : totalScore // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCorrectAnswers: freezed == totalCorrectAnswers
          ? _value.totalCorrectAnswers
          : totalCorrectAnswers // ignore: cast_nullable_to_non_nullable
              as int?,
      totalIncorrectAnswers: freezed == totalIncorrectAnswers
          ? _value.totalIncorrectAnswers
          : totalIncorrectAnswers // ignore: cast_nullable_to_non_nullable
              as int?,
      totalDuration: freezed == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
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
class _$_LearningAnalyticDto extends _LearningAnalyticDto {
  const _$_LearningAnalyticDto(
      {this.id,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'total_quizzes_taken') this.totalQuizzesTaken,
      @JsonKey(name: 'total_score') this.totalScore,
      @JsonKey(name: 'total_correct_answers') this.totalCorrectAnswers,
      @JsonKey(name: 'total_incorrect_answers') this.totalIncorrectAnswers,
      @JsonKey(name: 'total_duration') this.totalDuration,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$_LearningAnalyticDto.fromJson(Map<String, dynamic> json) =>
      _$$_LearningAnalyticDtoFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'total_quizzes_taken')
  final int? totalQuizzesTaken;
  @override
  @JsonKey(name: 'total_score')
  final int? totalScore;
  @override
  @JsonKey(name: 'total_correct_answers')
  final int? totalCorrectAnswers;
  @override
  @JsonKey(name: 'total_incorrect_answers')
  final int? totalIncorrectAnswers;
  @override
  @JsonKey(name: 'total_duration')
  final String? totalDuration;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'LearningAnalyticDto(id: $id, userId: $userId, totalQuizzesTaken: $totalQuizzesTaken, totalScore: $totalScore, totalCorrectAnswers: $totalCorrectAnswers, totalIncorrectAnswers: $totalIncorrectAnswers, totalDuration: $totalDuration, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LearningAnalyticDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.totalQuizzesTaken, totalQuizzesTaken) ||
                other.totalQuizzesTaken == totalQuizzesTaken) &&
            (identical(other.totalScore, totalScore) ||
                other.totalScore == totalScore) &&
            (identical(other.totalCorrectAnswers, totalCorrectAnswers) ||
                other.totalCorrectAnswers == totalCorrectAnswers) &&
            (identical(other.totalIncorrectAnswers, totalIncorrectAnswers) ||
                other.totalIncorrectAnswers == totalIncorrectAnswers) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      totalQuizzesTaken,
      totalScore,
      totalCorrectAnswers,
      totalIncorrectAnswers,
      totalDuration,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LearningAnalyticDtoCopyWith<_$_LearningAnalyticDto> get copyWith =>
      __$$_LearningAnalyticDtoCopyWithImpl<_$_LearningAnalyticDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LearningAnalyticDtoToJson(
      this,
    );
  }
}

abstract class _LearningAnalyticDto extends LearningAnalyticDto {
  const factory _LearningAnalyticDto(
      {final int? id,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'total_quizzes_taken') final int? totalQuizzesTaken,
      @JsonKey(name: 'total_score') final int? totalScore,
      @JsonKey(name: 'total_correct_answers') final int? totalCorrectAnswers,
      @JsonKey(name: 'total_incorrect_answers')
      final int? totalIncorrectAnswers,
      @JsonKey(name: 'total_duration') final String? totalDuration,
      final String? createdAt,
      final String? updatedAt}) = _$_LearningAnalyticDto;
  const _LearningAnalyticDto._() : super._();

  factory _LearningAnalyticDto.fromJson(Map<String, dynamic> json) =
      _$_LearningAnalyticDto.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'total_quizzes_taken')
  int? get totalQuizzesTaken;
  @override
  @JsonKey(name: 'total_score')
  int? get totalScore;
  @override
  @JsonKey(name: 'total_correct_answers')
  int? get totalCorrectAnswers;
  @override
  @JsonKey(name: 'total_incorrect_answers')
  int? get totalIncorrectAnswers;
  @override
  @JsonKey(name: 'total_duration')
  String? get totalDuration;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_LearningAnalyticDtoCopyWith<_$_LearningAnalyticDto> get copyWith =>
      throw _privateConstructorUsedError;
}
