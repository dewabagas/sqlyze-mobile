import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'user_api_service.g.dart';

@RestApi()
abstract class UserApiService {
  factory UserApiService(Dio dio, {String? baseUrl}) = _UserApiService;

  @GET('/users/profile')
  Future<HttpResponse> getProfile();
}
