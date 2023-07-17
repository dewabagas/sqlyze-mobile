import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sqlyze/domain/auth/requests/auth_request.dart';
import 'package:sqlyze/domain/auth/requests/register_request.dart';

part 'auth_api_service.g.dart';

@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String? baseUrl}) = _AuthApiService;

  @POST('/users/login')
  Future<HttpResponse> login(@Body() AuthRequest request);

  @POST('/users/register')
  Future<HttpResponse> register(@Body() RegisterRequest request);
}
