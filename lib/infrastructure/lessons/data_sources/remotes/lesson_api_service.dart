import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sqlyze/domain/auth/requests/auth_request.dart';

part 'lesson_api_service.g.dart';

@RestApi()
abstract class LessonApiService {
  factory LessonApiService(Dio dio, {String? baseUrl}) = _LessonApiService;

  @GET('/lessons/chapters/{material_type}')
  Future<HttpResponse> getAllLessons(@Path('material_type') int materialType);

  @GET('/lessons/chapters/detail/{material_id}')
  Future<HttpResponse> getLessonDetail(@Path('material_id') int materialId);
}
