import 'package:dartz/dartz.dart';
import 'package:sqlyze/domain/analytics/entities/learning_analytic.dart';
import 'package:sqlyze/domain/core/common/error/failure.dart';

abstract class IAnalyticRepository {
  Future<Either<Failure, LearningAnalytic?>> getLearningAnalytics(int userId);
}
