import 'package:dartz/dartz.dart';
import 'package:sqlyze/domain/auth/entities/user.dart';
import 'package:sqlyze/domain/auth/requests/auth_request.dart';
import 'package:sqlyze/domain/auth/requests/register_request.dart';
import 'package:sqlyze/domain/core/common/error/failure.dart';

abstract class IAuthRepository {
  Future<Either<Failure, User?>> login(
    AuthRequest authRequest,
  );

  Future<Either<Failure, User?>> register(
    RegisterRequest registerRequest,
  );
}
