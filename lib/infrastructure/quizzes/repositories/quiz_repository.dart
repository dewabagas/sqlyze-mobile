import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/core/common/error/failure.dart';
import 'package:sqlyze/domain/lessons/entities/lesson_detail.dart';
import 'package:sqlyze/domain/lessons/interfaces/i_lesson_repository.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_detail.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_question.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_result.dart';
import 'package:sqlyze/domain/quizzes/interfaces/i_quiz_repository.dart';
import 'package:sqlyze/domain/quizzes/requests/quiz_submission_request.dart';
import 'package:sqlyze/domain/quizzes/responses/quiz_submission_response.dart';
import 'package:sqlyze/infrastructure/lessons/data_sources/remotes/lesson_api_service.dart';
import 'package:sqlyze/infrastructure/lessons/models/lesson_detail_dto.dart';
import 'package:sqlyze/infrastructure/quizzes/data_sources/remotes/quiz_api_service.dart';
import 'package:sqlyze/infrastructure/quizzes/models/quiz_detail_dto.dart';
import 'package:sqlyze/infrastructure/quizzes/models/quiz_question_dto.dart';
import 'package:sqlyze/infrastructure/quizzes/models/quiz_result_dto.dart';
import 'package:sqlyze/infrastructure/quizzes/models/quiz_submission_dto.dart';
import 'package:sqlyze/injection.dart';

@LazySingleton(as: IQuizRepository)
class QuizRepository implements IQuizRepository {
  final QuizApiService quizApiService = getIt<QuizApiService>();

  @override
  Future<Either<Failure, List<QuizQuestion>?>> getQuizQuestions(
      int materialId) async {
    try {
      List<QuizQuestion>? questions = [];
      debugPrint('quizRepo');
      var response = await quizApiService.getQuizQuestions(materialId);
      debugPrint('response repo');
      debugPrint('${response.data}');
      if (response.data['code'] == 200) {
        final body = response.data;
        final result = body is String ? jsonDecode(body) : body;
        questions = QuizQuestionDto.fromJsonList(result['result']);
      } else {
        debugPrint('error woy');
        throw GeneralException(message: 'Invalid Request');
      }
      return Right(questions);
    } on GeneralException catch (e) {
      debugPrint('general ${e.message}');
      return Left(GeneralFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, QuizDetail>> getQuizByMaterialId(
      int materialId) async {
    try {
      QuizDetail? quizDetail;
      debugPrint('lessonRepo');
      var response = await quizApiService.getQuizByMaterialId(materialId);
      debugPrint('response repo');
      debugPrint('${response.data}');
      if (response.data['code'] == 200) {
        final body = response.data;
        final result = body is String ? jsonDecode(body) : body;
        quizDetail = QuizDetailDto.fromJson(result['result']).toDomain();
      } else {
        debugPrint('error woy');
        throw GeneralException(message: 'Invalid Request');
      }
      return Right(quizDetail);
    } on GeneralException catch (e) {
      debugPrint('general ${e.message}');
      return Left(GeneralFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, QuizResult?>> getQuizResult(
      int quizId, int userId) async {
    try {
      QuizResult? quizResult;
      debugPrint('lessonRepo');
      var response = await quizApiService.getQuizResult(quizId, userId);
      debugPrint('response repo');
      debugPrint('${response.data}');
      if (response.data['code'] == 200) {
        final body = response.data;
        final result = body is String ? jsonDecode(body) : body;
        quizResult = QuizResultDto.fromJson(result['result']).toDomain();
      } else {
        debugPrint('error woy');
        throw GeneralException(message: 'Invalid Request');
      }
      return Right(quizResult);
    } on GeneralException catch (e) {
      debugPrint('general ${e.message}');
      return Left(GeneralFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, QuizSubmissionResponse?>> submitQuizAnswer(
      QuizSubmissionRequest quizSubmissionRequest) async {
    try {
      QuizSubmissionResponse? quizResult;
      debugPrint('submitQuizAnswer repo');
      var response =
          await quizApiService.submitQuizAnswer(quizSubmissionRequest);
      debugPrint('response repo');
      debugPrint('${response.data}');
      if (response.data['code'] == 200) {
        final body = response.data;
        final result = body is String ? jsonDecode(body) : body;
        quizResult = QuizSubmissionDto.fromJson(result['result']).toDomain();
      } else {
        debugPrint('error woy');
        throw GeneralException(message: 'Invalid Request');
      }
      return Right(quizResult);
    } on GeneralException catch (e) {
      debugPrint('general ${e.message}');
      return Left(GeneralFailure(message: e.message));
    }
  }
}
