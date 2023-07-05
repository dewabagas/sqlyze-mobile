import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/user/entities/user_profile.dart';
import 'package:sqlyze/domain/user/interfaces/i_user_repository.dart';

part 'user_profile_event.dart';
part 'user_profile_state.dart';
part 'user_profile_bloc.freezed.dart';

@injectable
class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final IUserRepository iUserRepository;

  UserProfileBloc(this.iUserRepository)
      : super(const UserProfileState.initial()) {
    on<_$_GetProfile>((event, emit) async {
      try {
        emit(const UserProfileState.loadInProgress());
        final data = await iUserRepository.getProfile();
        log('response bloc ${data}');
        data.fold(
          (l) => emit(UserProfileState.loadFailure(l.message)),
          (r) => emit(UserProfileState.loadSuccess(r)),
        );
      } catch (e) {
        emit(UserProfileState.loadFailure(e.toString()));
      }
    });
  }
}
