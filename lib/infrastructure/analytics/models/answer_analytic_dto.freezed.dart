// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_analytic_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnswerAnalyticDto _$AnswerAnalyticDtoFromJson(Map<String, dynamic> json) {
  return _AnswerAnalyticDto.fromJson(json);
}

/// @nodoc
mixin _$AnswerAnalyticDto {
  @JsonKey(name: 'quiz_id')
  int? get quizId => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_questions')
  int? get totalQuestions => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct_answers')
  int? get correctAnswers => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct_answers_percentage')
  double? get correctAnswersPercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerAnalyticDtoCopyWith<AnswerAnalyticDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerAnalyticDtoCopyWith<$Res> {
  factory $AnswerAnalyticDtoCopyWith(
          AnswerAnalyticDto value, $Res Function(AnswerAnalyticDto) then) =
      _$AnswerAnalyticDtoCopyWithImpl<$Res, AnswerAnalyticDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'quiz_id') int? quizId,
      @JsonKey(name: 'total_questions') int? totalQuestions,
      @JsonKey(name: 'correct_answers') int? correctAnswers,
      @JsonKey(name: 'correct_answers_percentage')
      double? correctAnswersPercentage});
}

/// @nodoc
class _$AnswerAnalyticDtoCopyWithImpl<$Res, $Val extends AnswerAnalyticDto>
    implements $AnswerAnalyticDtoCopyWith<$Res> {
  _$AnswerAnalyticDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizId = freezed,
    Object? totalQuestions = freezed,
    Object? correctAnswers = freezed,
    Object? correctAnswersPercentage = freezed,
  }) {
    return _then(_value.copyWith(
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      correctAnswers: freezed == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int?,
      correctAnswersPercentage: freezed == correctAnswersPercentage
          ? _value.correctAnswersPercentage
          : correctAnswersPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerAnalyticDtoCopyWith<$Res>
    implements $AnswerAnalyticDtoCopyWith<$Res> {
  factory _$$_AnswerAnalyticDtoCopyWith(_$_AnswerAnalyticDto value,
          $Res Function(_$_AnswerAnalyticDto) then) =
      __$$_AnswerAnalyticDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'quiz_id') int? quizId,
      @JsonKey(name: 'total_questions') int? totalQuestions,
      @JsonKey(name: 'correct_answers') int? correctAnswers,
      @JsonKey(name: 'correct_answers_percentage')
      double? correctAnswersPercentage});
}

/// @nodoc
class __$$_AnswerAnalyticDtoCopyWithImpl<$Res>
    extends _$AnswerAnalyticDtoCopyWithImpl<$Res, _$_AnswerAnalyticDto>
    implements _$$_AnswerAnalyticDtoCopyWith<$Res> {
  __$$_AnswerAnalyticDtoCopyWithImpl(
      _$_AnswerAnalyticDto _value, $Res Function(_$_AnswerAnalyticDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizId = freezed,
    Object? totalQuestions = freezed,
    Object? correctAnswers = freezed,
    Object? correctAnswersPercentage = freezed,
  }) {
    return _then(_$_AnswerAnalyticDto(
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      correctAnswers: freezed == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int?,
      correctAnswersPercentage: freezed == correctAnswersPercentage
          ? _value.correctAnswersPercentage
          : correctAnswersPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerAnalyticDto extends _AnswerAnalyticDto {
  const _$_AnswerAnalyticDto(
      {@JsonKey(name: 'quiz_id') this.quizId,
      @JsonKey(name: 'total_questions') this.totalQuestions,
      @JsonKey(name: 'correct_answers') this.correctAnswers,
      @JsonKey(name: 'correct_answers_percentage')
      this.correctAnswersPercentage})
      : super._();

  factory _$_AnswerAnalyticDto.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerAnalyticDtoFromJson(json);

  @override
  @JsonKey(name: 'quiz_id')
  final int? quizId;
  @override
  @JsonKey(name: 'total_questions')
  final int? totalQuestions;
  @override
  @JsonKey(name: 'correct_answers')
  final int? correctAnswers;
  @override
  @JsonKey(name: 'correct_answers_percentage')
  final double? correctAnswersPercentage;

  @override
  String toString() {
    return 'AnswerAnalyticDto(quizId: $quizId, totalQuestions: $totalQuestions, correctAnswers: $correctAnswers, correctAnswersPercentage: $correctAnswersPercentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerAnalyticDto &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(
                    other.correctAnswersPercentage, correctAnswersPercentage) ||
                other.correctAnswersPercentage == correctAnswersPercentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quizId, totalQuestions,
      correctAnswers, correctAnswersPercentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerAnalyticDtoCopyWith<_$_AnswerAnalyticDto> get copyWith =>
      __$$_AnswerAnalyticDtoCopyWithImpl<_$_AnswerAnalyticDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerAnalyticDtoToJson(
      this,
    );
  }
}

abstract class _AnswerAnalyticDto extends AnswerAnalyticDto {
  const factory _AnswerAnalyticDto(
      {@JsonKey(name: 'quiz_id') final int? quizId,
      @JsonKey(name: 'total_questions') final int? totalQuestions,
      @JsonKey(name: 'correct_answers') final int? correctAnswers,
      @JsonKey(name: 'correct_answers_percentage')
      final double? correctAnswersPercentage}) = _$_AnswerAnalyticDto;
  const _AnswerAnalyticDto._() : super._();

  factory _AnswerAnalyticDto.fromJson(Map<String, dynamic> json) =
      _$_AnswerAnalyticDto.fromJson;

  @override
  @JsonKey(name: 'quiz_id')
  int? get quizId;
  @override
  @JsonKey(name: 'total_questions')
  int? get totalQuestions;
  @override
  @JsonKey(name: 'correct_answers')
  int? get correctAnswers;
  @override
  @JsonKey(name: 'correct_answers_percentage')
  double? get correctAnswersPercentage;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerAnalyticDtoCopyWith<_$_AnswerAnalyticDto> get copyWith =>
      throw _privateConstructorUsedError;
}
