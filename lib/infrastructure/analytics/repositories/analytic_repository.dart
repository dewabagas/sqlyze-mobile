import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/analytics/entities/learning_analytic.dart';
import 'package:sqlyze/domain/analytics/interfaces/i_analytic_repository.dart';
import 'package:sqlyze/domain/core/common/error/failure.dart';
import 'package:sqlyze/domain/lessons/entities/lesson_detail.dart';
import 'package:sqlyze/infrastructure/analytics/data_sources/remotes/analytic_api_service.dart';
import 'package:sqlyze/infrastructure/analytics/models/learning_analytic_dto.dart';
import 'package:sqlyze/infrastructure/lessons/data_sources/remotes/lesson_api_service.dart';
import 'package:sqlyze/infrastructure/lessons/models/lesson_detail_dto.dart';
import 'package:sqlyze/injection.dart';

@LazySingleton(as: IAnalyticRepository)
class AnalyticRepository implements IAnalyticRepository {
  final AnalyticApiService analyticApiService = getIt<AnalyticApiService>();

  @override
  Future<Either<Failure, LearningAnalytic>> getLearningAnalytics(
      int userId) async {
    try {
      LearningAnalytic? learningAnalytic;
      debugPrint('lessonRepo');
      var response = await analyticApiService.getLearningAnalytics(userId);
      debugPrint('response repo');
      debugPrint('${response.data}');
      if (response.data['code'] == 200) {
        final body = response.data;
        final result = body is String ? jsonDecode(body) : body;
        learningAnalytic =
            LearningAnalyticDto.fromJson(result['result']).toDomain();
      } else {
        debugPrint('error woy');
        throw GeneralException(message: 'Invalid Request');
      }
      return Right(learningAnalytic);
    } on GeneralException catch (e) {
      debugPrint('general ${e.message}');
      return Left(GeneralFailure(message: e.message));
    }
  }
}
