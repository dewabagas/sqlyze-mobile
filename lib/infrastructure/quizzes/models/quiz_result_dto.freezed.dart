// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizResultDto _$QuizResultDtoFromJson(Map<String, dynamic> json) {
  return _QuizResultDto.fromJson(json);
}

/// @nodoc
mixin _$QuizResultDto {
  @JsonKey(name: 'quiz_id')
  int? get quizId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quiz_name')
  String? get quizName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image_url')
  String? get profileImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_questions')
  int? get totalQuestions => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct_answers')
  int? get correctAnswers => throw _privateConstructorUsedError;
  @JsonKey(name: 'incorrect_answers')
  int? get incorrectAnswers => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_duration')
  int? get totalDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizResultDtoCopyWith<QuizResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizResultDtoCopyWith<$Res> {
  factory $QuizResultDtoCopyWith(
          QuizResultDto value, $Res Function(QuizResultDto) then) =
      _$QuizResultDtoCopyWithImpl<$Res, QuizResultDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'quiz_id') int? quizId,
      @JsonKey(name: 'quiz_name') String? quizName,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'profile_image_url') String? profileImageUrl,
      @JsonKey(name: 'total_questions') int? totalQuestions,
      @JsonKey(name: 'correct_answers') int? correctAnswers,
      @JsonKey(name: 'incorrect_answers') int? incorrectAnswers,
      int? score,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'total_duration') int? totalDuration});
}

/// @nodoc
class _$QuizResultDtoCopyWithImpl<$Res, $Val extends QuizResultDto>
    implements $QuizResultDtoCopyWith<$Res> {
  _$QuizResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizId = freezed,
    Object? quizName = freezed,
    Object? userId = freezed,
    Object? fullName = freezed,
    Object? profileImageUrl = freezed,
    Object? totalQuestions = freezed,
    Object? correctAnswers = freezed,
    Object? incorrectAnswers = freezed,
    Object? score = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? totalDuration = freezed,
  }) {
    return _then(_value.copyWith(
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int?,
      quizName: freezed == quizName
          ? _value.quizName
          : quizName // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      correctAnswers: freezed == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int?,
      incorrectAnswers: freezed == incorrectAnswers
          ? _value.incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDuration: freezed == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizResultDtoCopyWith<$Res>
    implements $QuizResultDtoCopyWith<$Res> {
  factory _$$_QuizResultDtoCopyWith(
          _$_QuizResultDto value, $Res Function(_$_QuizResultDto) then) =
      __$$_QuizResultDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'quiz_id') int? quizId,
      @JsonKey(name: 'quiz_name') String? quizName,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'profile_image_url') String? profileImageUrl,
      @JsonKey(name: 'total_questions') int? totalQuestions,
      @JsonKey(name: 'correct_answers') int? correctAnswers,
      @JsonKey(name: 'incorrect_answers') int? incorrectAnswers,
      int? score,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      @JsonKey(name: 'total_duration') int? totalDuration});
}

/// @nodoc
class __$$_QuizResultDtoCopyWithImpl<$Res>
    extends _$QuizResultDtoCopyWithImpl<$Res, _$_QuizResultDto>
    implements _$$_QuizResultDtoCopyWith<$Res> {
  __$$_QuizResultDtoCopyWithImpl(
      _$_QuizResultDto _value, $Res Function(_$_QuizResultDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizId = freezed,
    Object? quizName = freezed,
    Object? userId = freezed,
    Object? fullName = freezed,
    Object? profileImageUrl = freezed,
    Object? totalQuestions = freezed,
    Object? correctAnswers = freezed,
    Object? incorrectAnswers = freezed,
    Object? score = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? totalDuration = freezed,
  }) {
    return _then(_$_QuizResultDto(
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int?,
      quizName: freezed == quizName
          ? _value.quizName
          : quizName // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      totalQuestions: freezed == totalQuestions
          ? _value.totalQuestions
          : totalQuestions // ignore: cast_nullable_to_non_nullable
              as int?,
      correctAnswers: freezed == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int?,
      incorrectAnswers: freezed == incorrectAnswers
          ? _value.incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as int?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDuration: freezed == totalDuration
          ? _value.totalDuration
          : totalDuration // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuizResultDto extends _QuizResultDto {
  const _$_QuizResultDto(
      {@JsonKey(name: 'quiz_id') this.quizId,
      @JsonKey(name: 'quiz_name') this.quizName,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'profile_image_url') this.profileImageUrl,
      @JsonKey(name: 'total_questions') this.totalQuestions,
      @JsonKey(name: 'correct_answers') this.correctAnswers,
      @JsonKey(name: 'incorrect_answers') this.incorrectAnswers,
      this.score,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime,
      @JsonKey(name: 'total_duration') this.totalDuration})
      : super._();

  factory _$_QuizResultDto.fromJson(Map<String, dynamic> json) =>
      _$$_QuizResultDtoFromJson(json);

  @override
  @JsonKey(name: 'quiz_id')
  final int? quizId;
  @override
  @JsonKey(name: 'quiz_name')
  final String? quizName;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'profile_image_url')
  final String? profileImageUrl;
  @override
  @JsonKey(name: 'total_questions')
  final int? totalQuestions;
  @override
  @JsonKey(name: 'correct_answers')
  final int? correctAnswers;
  @override
  @JsonKey(name: 'incorrect_answers')
  final int? incorrectAnswers;
  @override
  final int? score;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  @override
  @JsonKey(name: 'total_duration')
  final int? totalDuration;

  @override
  String toString() {
    return 'QuizResultDto(quizId: $quizId, quizName: $quizName, userId: $userId, fullName: $fullName, profileImageUrl: $profileImageUrl, totalQuestions: $totalQuestions, correctAnswers: $correctAnswers, incorrectAnswers: $incorrectAnswers, score: $score, startTime: $startTime, endTime: $endTime, totalDuration: $totalDuration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizResultDto &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.quizName, quizName) ||
                other.quizName == quizName) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.totalQuestions, totalQuestions) ||
                other.totalQuestions == totalQuestions) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(other.incorrectAnswers, incorrectAnswers) ||
                other.incorrectAnswers == incorrectAnswers) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.totalDuration, totalDuration) ||
                other.totalDuration == totalDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      quizId,
      quizName,
      userId,
      fullName,
      profileImageUrl,
      totalQuestions,
      correctAnswers,
      incorrectAnswers,
      score,
      startTime,
      endTime,
      totalDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizResultDtoCopyWith<_$_QuizResultDto> get copyWith =>
      __$$_QuizResultDtoCopyWithImpl<_$_QuizResultDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizResultDtoToJson(
      this,
    );
  }
}

abstract class _QuizResultDto extends QuizResultDto {
  const factory _QuizResultDto(
          {@JsonKey(name: 'quiz_id') final int? quizId,
          @JsonKey(name: 'quiz_name') final String? quizName,
          @JsonKey(name: 'user_id') final int? userId,
          @JsonKey(name: 'full_name') final String? fullName,
          @JsonKey(name: 'profile_image_url') final String? profileImageUrl,
          @JsonKey(name: 'total_questions') final int? totalQuestions,
          @JsonKey(name: 'correct_answers') final int? correctAnswers,
          @JsonKey(name: 'incorrect_answers') final int? incorrectAnswers,
          final int? score,
          @JsonKey(name: 'start_time') final String? startTime,
          @JsonKey(name: 'end_time') final String? endTime,
          @JsonKey(name: 'total_duration') final int? totalDuration}) =
      _$_QuizResultDto;
  const _QuizResultDto._() : super._();

  factory _QuizResultDto.fromJson(Map<String, dynamic> json) =
      _$_QuizResultDto.fromJson;

  @override
  @JsonKey(name: 'quiz_id')
  int? get quizId;
  @override
  @JsonKey(name: 'quiz_name')
  String? get quizName;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'profile_image_url')
  String? get profileImageUrl;
  @override
  @JsonKey(name: 'total_questions')
  int? get totalQuestions;
  @override
  @JsonKey(name: 'correct_answers')
  int? get correctAnswers;
  @override
  @JsonKey(name: 'incorrect_answers')
  int? get incorrectAnswers;
  @override
  int? get score;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'end_time')
  String? get endTime;
  @override
  @JsonKey(name: 'total_duration')
  int? get totalDuration;
  @override
  @JsonKey(ignore: true)
  _$$_QuizResultDtoCopyWith<_$_QuizResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}
