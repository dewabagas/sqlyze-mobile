import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/user/interfaces/i_user_repository.dart';
import 'package:sqlyze/domain/user/requests/profile_update_request.dart';

part 'update_profile_event.dart';
part 'update_profile_state.dart';
part 'update_profile_bloc.freezed.dart';

@injectable
class UpdateProfileBloc extends Bloc<UpdateProfileEvent, UpdateProfileState> {
  final IUserRepository iUserRepository;

  UpdateProfileBloc(this.iUserRepository) : super(const UpdateProfileState.initial()) {
    on<_$_UpdateProfile>((event, emit) async {
      try {
        emit(const UpdateProfileState.loadInProgress());
        final data = await iUserRepository.updateProfile(event.profileUpdateRequest);
        log('response bloc ${data}');
        data.fold(
          (l) => emit(UpdateProfileState.loadFailure(l.message)),
          (r) => emit(UpdateProfileState.loadSuccess(r)),
        );
      } catch (e) {
        emit(UpdateProfileState.loadFailure(e.toString()));
      }
    });
  }
}
