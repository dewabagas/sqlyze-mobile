import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' as dio;
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqlyze/domain/core/common/error/failure.dart';
import 'package:sqlyze/domain/user/entities/user_profile.dart';
import 'package:sqlyze/domain/user/interfaces/i_user_repository.dart';
import 'package:sqlyze/domain/user/requests/profile_update_request.dart';
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

  @override
  Future<Either<Failure, String?>> updateProfile(
      ProfileUpdateRequest profileUpdateRequest) async {
    try {
      debugPrint('rquest ${profileUpdateRequest.fullName}');
      final response = await userApiService.updateProfile(profileUpdateRequest);

      debugPrint('response repo');
      debugPrint('${response.data}');

      if (response.data['code'] == 200) {
        return Right('Profile updated successfully');
      } else {
        debugPrint('error woy');
        throw GeneralException(message: 'Failed to update profile');
      }
    } on GeneralException catch (e) {
      debugPrint('general ${e.message}');
      return Left(GeneralFailure(message: e.message));
    }
  }
}
