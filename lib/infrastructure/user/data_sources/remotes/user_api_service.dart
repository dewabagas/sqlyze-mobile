import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sqlyze/domain/user/requests/profile_update_request.dart';
part 'user_api_service.g.dart';

@RestApi()
abstract class UserApiService {
  factory UserApiService(Dio dio, {String? baseUrl}) = _UserApiService;

  @GET('/users/profile')
  Future<HttpResponse> getProfile();

  @PUT('/users/profile/edit')
  Future<HttpResponse> updateProfile(
      @Body() ProfileUpdateRequest profileUpdateRequest);
}
