import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/auth/entities/user.dart';
import 'package:sqlyze/domain/auth/interfaces/i_auth_repository.dart';
import 'package:sqlyze/domain/auth/requests/auth_request.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository iAuthRepository;

  AuthBloc(this.iAuthRepository) : super(const AuthState.initial()) {
    on<_$_Login>((event, emit) async {
      try {
        emit(const AuthState.loadInProgress());
        final data = await iAuthRepository.login(event.authRequest);
        data.fold(
          (l) => emit(AuthState.loadFailure(l.message)),
          (r) => emit(AuthState.loadSuccess(r)),
        );
      } catch (e) {
        emit(AuthState.loadFailure(e.toString()));
      }
    });
  }
}
