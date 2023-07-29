import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/core/constants/preference_constants.dart';
import 'package:sqlyze/domain/core/helpers/preference_helper.dart';
import 'package:sqlyze/domain/core/utils/firebase_remote_config.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/locator.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';

part 'splashscreen_event.dart';
part 'splashscreen_state.dart';
part 'splashscreen_bloc.freezed.dart';

@injectable
class SplashscreenBloc extends Bloc<SplashscreenEvent, SplashscreenState> {
  // final FirebaseRemoteConfigService remoteConfig = getIt<FirebaseRemoteConfigService>();
  SplashscreenBloc() : super(const SplashscreenState.initial()) {
    on<_$_Init>((event, emit) async {
      try {
        emit(const SplashscreenState.loadInProgress());

        bool isLoggedIn = (await getBoolValuesPreference(
                key: PreferenceConstants.isLoggedIn)) ??
            false;
        log('isLoggedIn $isLoggedIn');
        if (isLoggedIn) {
          emit(SplashscreenState.loadSuccess(RouteStudentDashboard.name));
        } else {
          emit(SplashscreenState.loadSuccess(RouteOnboarding.name));
        }
      } catch (e) {
        emit(SplashscreenState.loadFailure());
      }
    });
  }
}
