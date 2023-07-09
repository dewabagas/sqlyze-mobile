import 'package:dartz/dartz.dart';
import 'package:sqlyze/domain/core/common/error/failure.dart';
import 'package:sqlyze/domain/lessons/entities/lesson_detail.dart';

abstract class ILessonRepository {
  Future<Either<Failure, List<LessonDetail>?>> getAllLessons(int materialType);
  Future<Either<Failure, LessonDetail>> getLessonDetail(int materialId);
}
