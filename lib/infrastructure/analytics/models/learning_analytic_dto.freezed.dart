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
  String? get userId => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'total_quizzes')
  int? get totalQuizzes => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_questions')
  int? get totalQuestions => throw _privateConstructorUsedError;
  @JsonKey(name: 'quiz_percentage')
  double? get quizPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'performance_percentage')
  double? get performancePercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'answers_per_quiz_attempt')
  List<AnswerAnalyticDto>? get answersPerQuizAttempt =>
      throw _privateConstructorUsedError;

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
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'total_quizzes_taken') int? totalQuizzesTaken,
      @JsonKey(name: 'total_score') int? totalScore,
      @JsonKey(name: 'total_correct_answers') int? totalCorrectAnswers,
      @JsonKey(name: 'total_incorrect_answers') int? totalIncorrectAnswers,
      @JsonKey(name: 'total_duration') String? totalDuration,
      @JsonKey(name: 'total_quizzes') int? totalQuizzes,
      @JsonKey(name: 'total_questions') int? totalQuestions,
      @JsonKey(name: 'quiz_percentage') double? quizPercentage,
      @JsonKey(name: 'performance_percentage') double? performancePercentage,
      @JsonKey(name: 'answers_per_quiz_attempt')
      List<AnswerAnalyticDto>? answersPerQuizAttempt});
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
    Object? totalQuizzes = freezed,
    Object? totalQuestions = freezed,
    Object? quizPercentage = freezed,
    Object? performancePercentage = freezed,
    Object? answersPerQuizAttempt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      totalQuizzes: freezed == totalQuizzes
          ? _value.totalQuizzes
          : totalQuizzes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      quizPercentage: freezed == quizPercentage
          ? _value.quizPercentage
          : quizPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      performancePercentage: freezed == performancePercentage
          ? _value.performancePercentage
          : performancePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      answersPerQuizAttempt: freezed == answersPerQuizAttempt
          ? _value.answersPerQuizAttempt
          : answersPerQuizAttempt // ignore: cast_nullable_to_non_nullable
              as List<AnswerAnalyticDto>?,
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
      @JsonKey(name: 'user_id') String? userId,
      @JsonKey(name: 'total_quizzes_taken') int? totalQuizzesTaken,
      @JsonKey(name: 'total_score') int? totalScore,
      @JsonKey(name: 'total_correct_answers') int? totalCorrectAnswers,
      @JsonKey(name: 'total_incorrect_answers') int? totalIncorrectAnswers,
      @JsonKey(name: 'total_duration') String? totalDuration,
      @JsonKey(name: 'total_quizzes') int? totalQuizzes,
      @JsonKey(name: 'total_questions') int? totalQuestions,
      @JsonKey(name: 'quiz_percentage') double? quizPercentage,
      @JsonKey(name: 'performance_percentage') double? performancePercentage,
      @JsonKey(name: 'answers_per_quiz_attempt')
      List<AnswerAnalyticDto>? answersPerQuizAttempt});
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
    Object? totalQuizzes = freezed,
    Object? totalQuestions = freezed,
    Object? quizPercentage = freezed,
    Object? performancePercentage = freezed,
    Object? answersPerQuizAttempt = freezed,
  }) {
    return _then(_$_LearningAnalyticDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      totalQuizzes: freezed == totalQuizzes
          ? _value.totalQuizzes
          : totalQuizzes // ignore: cast_nullable_to_non_nullable
              as int?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      quizPercentage: freezed == quizPercentage
          ? _value.quizPercentage
          : quizPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      performancePercentage: freezed == performancePercentage
          ? _value.performancePercentage
          : performancePercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      answersPerQuizAttempt: freezed == answersPerQuizAttempt
          ? _value._answersPerQuizAttempt
          : answersPerQuizAttempt // ignore: cast_nullable_to_non_nullable
              as List<AnswerAnalyticDto>?,
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
      @JsonKey(name: 'total_quizzes') this.totalQuizzes,
      @JsonKey(name: 'total_questions') this.totalQuestions,
      @JsonKey(name: 'quiz_percentage') this.quizPercentage,
      @JsonKey(name: 'performance_percentage') this.performancePercentage,
      @JsonKey(name: 'answers_per_quiz_attempt')
      final List<AnswerAnalyticDto>? answersPerQuizAttempt})
      : _answersPerQuizAttempt = answersPerQuizAttempt,
        super._();

  factory _$_LearningAnalyticDto.fromJson(Map<String, dynamic> json) =>
      _$$_LearningAnalyticDtoFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
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
  @JsonKey(name: 'total_quizzes')
  final int? totalQuizzes;
  @override
  @JsonKey(name: 'total_questions')
  final int? totalQuestions;
  @override
  @JsonKey(name: 'quiz_percentage')
  final double? quizPercentage;
  @override
  @JsonKey(name: 'performance_percentage')
  final double? performancePercentage;
  final List<AnswerAnalyticDto>? _answersPerQuizAttempt;
  @override
  @JsonKey(name: 'answers_per_quiz_attempt')
  List<AnswerAnalyticDto>? get answersPerQuizAttempt {
    final value = _answersPerQuizAttempt;
    if (value == null) return null;
    if (_answersPerQuizAttempt is EqualUnmodifiableListView)
      return _answersPerQuizAttempt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LearningAnalyticDto(id: $id, userId: $userId, totalQuizzesTaken: $totalQuizzesTaken, totalScore: $totalScore, totalCorrectAnswers: $totalCorrectAnswers, totalIncorrectAnswers: $totalIncorrectAnswers, totalDuration: $totalDuration, totalQuizzes: $totalQuizzes, totalQuestions: $totalQuestions, quizPercentage: $quizPercentage, performancePercentage: $performancePercentage, answersPerQuizAttempt: $answersPerQuizAttempt)';
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
            (identical(other.totalQuizzes, totalQuizzes) ||
                other.totalQuizzes == totalQuizzes) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.quizPercentage, quizPercentage) ||
                other.quizPercentage == quizPercentage) &&
            (identical(other.performancePercentage, performancePercentage) ||
                other.performancePercentage == performancePercentage) &&
            const DeepCollectionEquality()
                .equals(other._answersPerQuizAttempt, _answersPerQuizAttempt));
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
      totalQuizzes,
      totalQuestions,
      quizPercentage,
      performancePercentage,
      const DeepCollectionEquality().hash(_answersPerQuizAttempt));

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
      @JsonKey(name: 'user_id') final String? userId,
      @JsonKey(name: 'total_quizzes_taken') final int? totalQuizzesTaken,
      @JsonKey(name: 'total_score') final int? totalScore,
      @JsonKey(name: 'total_correct_answers') final int? totalCorrectAnswers,
      @JsonKey(name: 'total_incorrect_answers')
      final int? totalIncorrectAnswers,
      @JsonKey(name: 'total_duration') final String? totalDuration,
      @JsonKey(name: 'total_quizzes') final int? totalQuizzes,
      @JsonKey(name: 'total_questions') final int? totalQuestions,
      @JsonKey(name: 'quiz_percentage') final double? quizPercentage,
      @JsonKey(name: 'performance_percentage')
      final double? performancePercentage,
      @JsonKey(name: 'answers_per_quiz_attempt')
      final List<AnswerAnalyticDto>?
          answersPerQuizAttempt}) = _$_LearningAnalyticDto;
  const _LearningAnalyticDto._() : super._();

  factory _LearningAnalyticDto.fromJson(Map<String, dynamic> json) =
      _$_LearningAnalyticDto.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'user_id')
  String? get userId;
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
  @JsonKey(name: 'total_quizzes')
  int? get totalQuizzes;
  @override
  @JsonKey(name: 'total_questions')
  int? get totalQuestions;
  @override
  @JsonKey(name: 'quiz_percentage')
  double? get quizPercentage;
  @override
  @JsonKey(name: 'performance_percentage')
  double? get performancePercentage;
  @override
  @JsonKey(name: 'answers_per_quiz_attempt')
  List<AnswerAnalyticDto>? get answersPerQuizAttempt;
  @override
  @JsonKey(ignore: true)
  _$$_LearningAnalyticDtoCopyWith<_$_LearningAnalyticDto> get copyWith =>
      throw _privateConstructorUsedError;
}
