import 'package:dartz/dartz.dart';
import 'package:sqlyze/domain/core/common/error/failure.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_detail.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_question.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_result.dart';
import 'package:sqlyze/domain/quizzes/requests/quiz_submission_request.dart';
import 'package:sqlyze/domain/quizzes/responses/quiz_submission_response.dart';

abstract class IQuizRepository {
  Future<Either<Failure, QuizDetail?>> getQuizByMaterialId(int materialId);
  Future<Either<Failure, List<QuizQuestion>?>> getQuizQuestions(int quizId);
  Future<Either<Failure, QuizResult?>> getQuizResult(int quizId, int userId);
  Future<Either<Failure, QuizSubmissionResponse?>> submitQuizAnswer(
      QuizSubmissionRequest quizSubmissionRequest);
  Future<Either<Failure, String?>> unlockQuiz(int materialId);
}
