import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sqlyze/domain/core/common/error/failure.dart';
import 'package:sqlyze/domain/user/entities/user_profile.dart';
import 'package:sqlyze/domain/user/requests/profile_update_request.dart';

abstract class IUserRepository {
  Future<Either<Failure, UserProfile?>> getProfile();
  Future<Either<Failure, String?>> updateProfile(
      ProfileUpdateRequest profileUpdateRequest);
}
