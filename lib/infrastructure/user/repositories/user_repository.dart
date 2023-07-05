import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/core/common/error/failure.dart';
import 'package:sqlyze/domain/core/constants/preference_constants.dart';
import 'package:sqlyze/domain/core/helpers/preference_helper.dart';
import 'package:sqlyze/domain/user/entities/user_profile.dart';
import 'package:sqlyze/domain/user/interfaces/i_user_repository.dart';
import 'package:sqlyze/infrastructure/user/data_sources/remotes/user_api_service.dart';
import 'package:sqlyze/infrastructure/user/models/profile_dto.dart';
import 'package:sqlyze/injection.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final UserApiService userApiService = getIt<UserApiService>();

  @override
  Future<Either<Failure, UserProfile?>> getProfile() async {
    try {
      UserProfile? user;
      var response = await userApiService.getProfile();
      log('response repo');
      log('${response.data}');
      if (response.data['code'] == 200) {
        final body = response.data;
        final result = body is String ? jsonDecode(body) : body;
        user = ProfileDto.fromJson(result['result']).toDomain();
        await addStringToPreference(
            key: PreferenceConstants.accessToken, value: body['token']);
      } else {
        log('error woy');
        throw GeneralException(message: 'Invalid Request');
      }
      return Right(user);
    } on GeneralException catch (e) {
      log('general ${e.message}');
      return Left(GeneralFailure(message: e.message));
    }
  }
}
