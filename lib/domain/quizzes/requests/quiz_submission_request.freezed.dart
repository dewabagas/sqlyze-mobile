// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_submission_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizSubmissionRequest _$QuizSubmissionRequestFromJson(
    Map<String, dynamic> json) {
  return _QuizSubmissionRequest.fromJson(json);
}

/// @nodoc
mixin _$QuizSubmissionRequest {
  @JsonKey(name: 'quiz_id')
  int? get quizId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_id')
  int? get questionId => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer_id')
  int? get answerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizSubmissionRequestCopyWith<QuizSubmissionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizSubmissionRequestCopyWith<$Res> {
  factory $QuizSubmissionRequestCopyWith(QuizSubmissionRequest value,
          $Res Function(QuizSubmissionRequest) then) =
      _$QuizSubmissionRequestCopyWithImpl<$Res, QuizSubmissionRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'quiz_id') int? quizId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'question_id') int? questionId,
      @JsonKey(name: 'answer_id') int? answerId});
}

/// @nodoc
class _$QuizSubmissionRequestCopyWithImpl<$Res,
        $Val extends QuizSubmissionRequest>
    implements $QuizSubmissionRequestCopyWith<$Res> {
  _$QuizSubmissionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizId = freezed,
    Object? userId = freezed,
    Object? questionId = freezed,
    Object? answerId = freezed,
  }) {
    return _then(_value.copyWith(
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int?,
      answerId: freezed == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuizSubmissionRequestCopyWith<$Res>
    implements $QuizSubmissionRequestCopyWith<$Res> {
  factory _$$_QuizSubmissionRequestCopyWith(_$_QuizSubmissionRequest value,
          $Res Function(_$_QuizSubmissionRequest) then) =
      __$$_QuizSubmissionRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'quiz_id') int? quizId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'question_id') int? questionId,
      @JsonKey(name: 'answer_id') int? answerId});
}

/// @nodoc
class __$$_QuizSubmissionRequestCopyWithImpl<$Res>
    extends _$QuizSubmissionRequestCopyWithImpl<$Res, _$_QuizSubmissionRequest>
    implements _$$_QuizSubmissionRequestCopyWith<$Res> {
  __$$_QuizSubmissionRequestCopyWithImpl(_$_QuizSubmissionRequest _value,
      $Res Function(_$_QuizSubmissionRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quizId = freezed,
    Object? userId = freezed,
    Object? questionId = freezed,
    Object? answerId = freezed,
  }) {
    return _then(_$_QuizSubmissionRequest(
      quizId: freezed == quizId
          ? _value.quizId
          : quizId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      questionId: freezed == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as int?,
      answerId: freezed == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuizSubmissionRequest implements _QuizSubmissionRequest {
  _$_QuizSubmissionRequest(
      {@JsonKey(name: 'quiz_id') this.quizId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'question_id') this.questionId,
      @JsonKey(name: 'answer_id') this.answerId});

  factory _$_QuizSubmissionRequest.fromJson(Map<String, dynamic> json) =>
      _$$_QuizSubmissionRequestFromJson(json);

  @override
  @JsonKey(name: 'quiz_id')
  final int? quizId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'question_id')
  final int? questionId;
  @override
  @JsonKey(name: 'answer_id')
  final int? answerId;

  @override
  String toString() {
    return 'QuizSubmissionRequest(quizId: $quizId, userId: $userId, questionId: $questionId, answerId: $answerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuizSubmissionRequest &&
            (identical(other.quizId, quizId) || other.quizId == quizId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.answerId, answerId) ||
                other.answerId == answerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, quizId, userId, questionId, answerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuizSubmissionRequestCopyWith<_$_QuizSubmissionRequest> get copyWith =>
      __$$_QuizSubmissionRequestCopyWithImpl<_$_QuizSubmissionRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuizSubmissionRequestToJson(
      this,
    );
  }
}

abstract class _QuizSubmissionRequest implements QuizSubmissionRequest {
  factory _QuizSubmissionRequest(
          {@JsonKey(name: 'quiz_id') final int? quizId,
          @JsonKey(name: 'user_id') final int? userId,
          @JsonKey(name: 'question_id') final int? questionId,
          @JsonKey(name: 'answer_id') final int? answerId}) =
      _$_QuizSubmissionRequest;

  factory _QuizSubmissionRequest.fromJson(Map<String, dynamic> json) =
      _$_QuizSubmissionRequest.fromJson;

  @override
  @JsonKey(name: 'quiz_id')
  int? get quizId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'question_id')
  int? get questionId;
  @override
  @JsonKey(name: 'answer_id')
  int? get answerId;
  @override
  @JsonKey(ignore: true)
  _$$_QuizSubmissionRequestCopyWith<_$_QuizSubmissionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
