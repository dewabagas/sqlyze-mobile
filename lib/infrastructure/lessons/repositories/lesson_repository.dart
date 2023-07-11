import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/core/common/error/failure.dart';
import 'package:sqlyze/domain/lessons/entities/lesson_detail.dart';
import 'package:sqlyze/domain/lessons/interfaces/i_lesson_repository.dart';
import 'package:sqlyze/infrastructure/lessons/data_sources/remotes/lesson_api_service.dart';
import 'package:sqlyze/infrastructure/lessons/models/lesson_detail_dto.dart';
import 'package:sqlyze/injection.dart';

@LazySingleton(as: ILessonRepository)
class LessonRepository implements ILessonRepository {
  final LessonApiService lessonApiService = getIt<LessonApiService>();

  @override
  Future<Either<Failure, List<LessonDetail>?>> getAllLessons(
      int materialType) async {
    try {
      List<LessonDetail>? lessonList = [];
      debugPrint('lessonRepo');
      var response = await lessonApiService.getAllLessons(materialType);
      debugPrint('response repo');
      debugPrint('${response.data}');
      if (response.data['code'] == 200) {
        final body = response.data;
        final result = body is String ? jsonDecode(body) : body;
        lessonList = LessonDetailDto.fromJsonList(result['result']);
      } else {
        debugPrint('error woy');
        throw GeneralException(message: 'Invalid Request');
      }
      return Right(lessonList);
    } on GeneralException catch (e) {
      debugPrint('general ${e.message}');
      return Left(GeneralFailure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, LessonDetail>> getLessonDetail(int materialId) async {
    try {
      LessonDetail? lessonDetail;
      debugPrint('lessonRepo');
      var response = await lessonApiService.getLessonDetail(materialId);
      debugPrint('response repo');
      debugPrint('${response.data}');
      if (response.data['code'] == 200) {
        final body = response.data;
        final result = body is String ? jsonDecode(body) : body;
        lessonDetail = LessonDetailDto.fromJson(result['result']).toDomain();
      } else {
        debugPrint('error woy');
        throw GeneralException(message: 'Invalid Request');
      }
      return Right(lessonDetail);
    } on GeneralException catch (e) {
      debugPrint('general ${e.message}');
      return Left(GeneralFailure(message: e.message));
    }
  }
}
