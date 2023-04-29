import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/auth/entities/user.dart';
import 'package:sqlyze/domain/auth/interfaces/i_auth_repository.dart';
import 'package:sqlyze/domain/core/common/error/exceptions.dart';
import 'package:sqlyze/domain/core/common/error/failure.dart';
import 'package:sqlyze/domain/auth/requests/auth_request.dart';
import 'package:sqlyze/infrastructure/auth/data_sources/remotes/auth_api_service.dart';
import 'package:sqlyze/infrastructure/auth/models/login_dto.dart';
import 'package:sqlyze/injection.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final AuthApiService authApiService = getIt<AuthApiService>();

  @override
  Future<Either<Failure, User?>> login(AuthRequest authRequest) async {
    try {
      User? user;
      var response = await authApiService.login(authRequest);
      log('response repo ');
      log('${response.data}');
      if (response.data['code'] == 200) {
        final body = response.data;
        final result = body is String ? jsonDecode(body) : body;
        user = LoginDto.fromJson(result['result']).toDomain();
      } else {
        log('error woy');
      }
      return Right(user);
    } on GeneralException catch (e) {
      log('general ${e.message}');
      return Left(GeneralFailure(message: e.message));
    }
  }
}
