import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/auth/entities/user.dart';
import 'package:sqlyze/domain/auth/interfaces/i_auth_repository.dart';
import 'package:sqlyze/domain/auth/requests/register_request.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IAuthRepository iAuthRepository;

  RegisterBloc(this.iAuthRepository) : super(const RegisterState.initial()) {
    on<_$_Register>((event, emit) async {
      try {
        emit(const RegisterState.loadInProgress());
        final data = await iAuthRepository.register(event.registerRequest);
        log('response bloc ${data}');
        data.fold(
          (l) => emit(RegisterState.loadFailure(l.message)),
          (r) => emit(RegisterState.loadSuccess(r)),
        );
      } catch (e) {
        emit(RegisterState.loadFailure(e.toString()));
      }
    });
  }
}
