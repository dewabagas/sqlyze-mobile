import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
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
      debugPrint('userREpo');
      var response = await userApiService.getProfile();
      debugPrint('response repo');
      debugPrint('${response.data}');
      if (response.data['code'] == 200) {
        final body = response.data;
        final result = body is String ? jsonDecode(body) : body;
        user = ProfileDto.fromJson(result['result']).toDomain();
      } else {
        debugPrint('error woy');
        throw GeneralException(message: 'Invalid Request');
      }
      return Right(user);
    } on GeneralException catch (e) {
      debugPrint('general ${e.message}');
      return Left(GeneralFailure(message: e.message));
    }
  }
}
