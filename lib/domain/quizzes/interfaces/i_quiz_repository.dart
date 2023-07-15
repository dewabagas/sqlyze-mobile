import 'package:dartz/dartz.dart';
import 'package:sqlyze/domain/core/common/error/failure.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_detail.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_question.dart';
import 'package:sqlyze/domain/quizzes/entitites/quiz_result.dart';

abstract class IQuizRepository {
  Future<Either<Failure, QuizDetail?>> getQuizByMaterialId(int materialId);
  Future<Either<Failure, List<QuizQuestion>?>> getQuizQuestions(int quizId);
  Future<Either<Failure, QuizResult?>> getQuizResult(int quizId, int userId);
}
