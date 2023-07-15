import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'analytic_api_service.g.dart';

@RestApi()
abstract class AnalyticApiService {
  factory AnalyticApiService(Dio dio, {String? baseUrl}) = _AnalyticApiService;

  @GET('/analytics/analytic/{user_id}')
  Future<HttpResponse> getLearningAnalytics(@Path('user_id') int userId);
}
