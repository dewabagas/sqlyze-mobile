import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';
import 'package:sqlyze/domain/user/entities/user_profile.dart';
import 'package:sqlyze/domain/user/interfaces/i_user_repository.dart';
import 'package:sqlyze/injection.dart';

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
        debugPrint('user bloc');
        emit(const UserProfileState.loadInProgress());
        final data = await iUserRepository.getProfile();
        debugPrint('response bloc ${data}');
        data.fold(
          (l) => emit(UserProfileState.loadFailure(l.message)),
          (r) {
            Mixpanel mixpanel = getIt<Mixpanel>();
            mixpanel.registerSuperProperties(
              {
                'User': r?.fullName,
                'Email': r?.email,
                'User ID': r?.id,
              },
            );
            mixpanel.identify(r?.email ?? '');
            mixpanel.getPeople().set('\$email', r?.email);
            mixpanel.getPeople().set('\$name', r?.fullName);
            return emit(UserProfileState.loadSuccess(r));
          },
        );
      } catch (e) {
        emit(UserProfileState.loadFailure(e.toString()));
      }
    });
  }
}
