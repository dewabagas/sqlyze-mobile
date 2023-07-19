// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_submission_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizSubmissionDto _$QuizSubmissionDtoFromJson(Map<String, dynamic> json) {
  return _QuizSubmissionDto.fromJson(json);
}

/// @nodoc
mixin _$QuizSubmissionDto {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_d')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quiz_id')
  int? get quizId => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct_answer')
  int? get correctAnswer => throw _privateConstructorUsedError;
  @JsonKey(name: 'incorrect_answer')
  int? get incorrectAnswer => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizSubmissionDtoCopyWith<QuizSubmissionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizSubmissionDtoCopyWith<$Res> {
  factory $QuizSubmissionDtoCopyWith(
          QuizSubmissionDto value, $Res Function(QuizSubmissionDto) then) =
      _$QuizSubmissionDtoCopyWithImpl<$Res, QuizSubmissionDto>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_d') int? userId,
      @JsonKey(name: 'quiz_id') int? quizId,
      int? score,
      @JsonKey(name: 'correct_answer') int? correctAnswer,
      @JsonKey(name: 'incorrect_answer') int? incorrectAnswer,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$QuizSubmissionDtoCopyWithImpl<$Res, $Val extends QuizSubmissionDto>
    implements $QuizSubmissionDtoCopyWith<$Res> {
  _$QuizSubmissionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? quizId = freezed,
    Object? score = freezed,
    Object? correctAnswer = freezed,
    Object? incorrectAnswer = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
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
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as int?,
      incorrectAnswer: freezed == incorrectAnswer
          ? _value.incorrectAnswer
          : incorrectAnswer // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_QuizSubmissionDtoCopyWith<$Res>
    implements $QuizSubmissionDtoCopyWith<$Res> {
  factory _$$_QuizSubmissionDtoCopyWith(_$_QuizSubmissionDto value,
          $Res Function(_$_QuizSubmissionDto) then) =
      __$$_QuizSubmissionDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'user_d') int? userId,
      @JsonKey(name: 'quiz_id') int? quizId,
      int? score,
      @JsonKey(name: 'correct_answer') int? correctAnswer,
      @JsonKey(name: 'incorrect_answer') int? incorrectAnswer,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$_QuizSubmissionDtoCopyWithImpl<$Res>
    extends _$QuizSubmissionDtoCopyWithImpl<$Res, _$_QuizSubmissionDto>
    implements _$$_QuizSubmissionDtoCopyWith<$Res> {
  __$$_QuizSubmissionDtoCopyWithImpl(
      _$_QuizSubmissionDto _value, $Res Function(_$_QuizSubmissionDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userId = freezed,
    Object? quizId = freezed,
    Object? score = freezed,
    Object? correctAnswer = freezed,
    Object? incorrectAnswer = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_QuizSubmissionDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      correctAnswer: freezed == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as int?,
      incorrectAnswer: freezed == incorrectAnswer
          ? _value.incorrectAnswer
          : incorrectAnswer // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
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
class _$_QuizSubmissionDto extends _QuizSubmissionDto {
  const _$_QuizSubmissionDto(
      {this.id,
      @JsonKey(name: 'user_d') this.userId,
      @JsonKey(name: 'quiz_id') this.quizId,
      this.score,
      @JsonKey(name: 'correct_answer') this.correctAnswer,
      @JsonKey(name: 'incorrect_answer') this.incorrectAnswer,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$_QuizSubmissionDto.fromJson(Map<String, dynamic> json) =>
      _$$_QuizSubmissionDtoFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_d')
  final int? userId;
  @override
  @JsonKey(name: 'quiz_id')
  final int? quizId;
  @override
  final int? score;
  @override
  @JsonKey(name: 'correct_answer')
  final int? correctAnswer;
  @override
  @JsonKey(name: 'incorrect_answer')
  final int? incorrectAnswer;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'QuizSubmissionDto(id: $id, userId: $userId, quizId: $quizId, score: $score, correctAnswer: $correctAnswer, incorrectAnswer: $incorrectAnswer, startTime: $startTime, endTime: $endTime, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizSubmissionDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer) &&
            (identical(other.incorrectAnswer, incorrectAnswer) ||
                other.incorrectAnswer == incorrectAnswer) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, quizId, score,
      correctAnswer, incorrectAnswer, startTime, endTime, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizSubmissionDtoCopyWith<_$_QuizSubmissionDto> get copyWith =>
      __$$_QuizSubmissionDtoCopyWithImpl<_$_QuizSubmissionDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizSubmissionDtoToJson(
      this,
    );
  }
}

abstract class _QuizSubmissionDto extends QuizSubmissionDto {
  const factory _QuizSubmissionDto(
      {final int? id,
      @JsonKey(name: 'user_d') final int? userId,
      @JsonKey(name: 'quiz_id') final int? quizId,
      final int? score,
      @JsonKey(name: 'correct_answer') final int? correctAnswer,
      @JsonKey(name: 'incorrect_answer') final int? incorrectAnswer,
      @JsonKey(name: 'start_time') final String? startTime,
      @JsonKey(name: 'end_time') final String? endTime,
      final String? createdAt,
      final String? updatedAt}) = _$_QuizSubmissionDto;
  const _QuizSubmissionDto._() : super._();

  factory _QuizSubmissionDto.fromJson(Map<String, dynamic> json) =
      _$_QuizSubmissionDto.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_d')
  int? get userId;
  @override
  @JsonKey(name: 'quiz_id')
  int? get quizId;
  @override
  int? get score;
  @override
  @JsonKey(name: 'correct_answer')
  int? get correctAnswer;
  @override
  @JsonKey(name: 'incorrect_answer')
  int? get incorrectAnswer;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'end_time')
  String? get endTime;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_QuizSubmissionDtoCopyWith<_$_QuizSubmissionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
