import 'package:dartz/dartz.dart';
import 'package:sqlyze/domain/core/common/error/failure.dart';
import 'package:sqlyze/domain/user/entities/user_profile.dart';

abstract class IUserRepository {
  Future<Either<Failure, UserProfile?>> getProfile();
}
