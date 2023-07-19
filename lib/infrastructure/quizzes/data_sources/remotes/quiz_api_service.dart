import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sqlyze/domain/quizzes/requests/quiz_submission_request.dart';

part 'quiz_api_service.g.dart';

@RestApi()
abstract class QuizApiService {
  factory QuizApiService(Dio dio, {String? baseUrl}) = _QuizApiService;

  @GET('/quizzes//quiz/{material_id}')
  Future<HttpResponse> getQuizByMaterialId(@Path('material_id') int materialId);

  @GET('/quizzes/quiz/{quiz_id}/questions')
  Future<HttpResponse> getQuizQuestions(@Path('quiz_id') int quizId);

  @GET('/quizzes/quiz/{quiz_id}/result/{user_id}')
  Future<HttpResponse> getQuizResult(
      @Path('quiz_id') int quizId, @Path('user_id') int userId);

  @POST('/quizzes/quiz/submit')
  Future<HttpResponse> submitQuizAnswer(@Body() QuizSubmissionRequest request);
}
