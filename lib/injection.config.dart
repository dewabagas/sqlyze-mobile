// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:sqlyze/application/analytics/learning_analytic_bloc/learning_analytic_bloc.dart'
    as _i11;
import 'package:sqlyze/application/auth_bloc/auth_bloc.dart' as _i16;
import 'package:sqlyze/application/lessons/lesson_detail_bloc/lesson_detail_bloc.dart'
    as _i12;
import 'package:sqlyze/application/lessons/lesson_list_bloc/lesson_list_bloc.dart'
    as _i13;
import 'package:sqlyze/application/splashscreen_bloc/splashscreen_bloc.dart'
    as _i14;
import 'package:sqlyze/application/user_profile_bloc/user_profile_bloc.dart'
    as _i15;
import 'package:sqlyze/domain/analytics/interfaces/i_analytic_repository.dart'
    as _i3;
import 'package:sqlyze/domain/auth/interfaces/i_auth_repository.dart' as _i5;
import 'package:sqlyze/domain/lessons/interfaces/i_lesson_repository.dart'
    as _i7;
import 'package:sqlyze/domain/user/interfaces/i_user_repository.dart' as _i9;
import 'package:sqlyze/infrastructure/analytics/repositories/analytic_repository.dart'
    as _i4;
import 'package:sqlyze/infrastructure/auth/repositories/auth_repository.dart'
    as _i6;
import 'package:sqlyze/infrastructure/lessons/repositories/lesson_repository.dart'
    as _i8;
import 'package:sqlyze/infrastructure/user/repositories/user_repository.dart'
    as _i10;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IAnalyticRepository>(() => _i4.AnalyticRepository());
    gh.lazySingleton<_i5.IAuthRepository>(() => _i6.AuthRepository());
    gh.lazySingleton<_i7.ILessonRepository>(() => _i8.LessonRepository());
    gh.lazySingleton<_i9.IUserRepository>(() => _i10.UserRepository());
    gh.factory<_i11.LearningAnalyticBloc>(
        () => _i11.LearningAnalyticBloc(gh<_i3.IAnalyticRepository>()));
    gh.factory<_i12.LessonDetailBloc>(
        () => _i12.LessonDetailBloc(gh<_i7.ILessonRepository>()));
    gh.factory<_i13.LessonListBloc>(
        () => _i13.LessonListBloc(gh<_i7.ILessonRepository>()));
    gh.factory<_i14.SplashscreenBloc>(() => _i14.SplashscreenBloc());
    gh.factory<_i15.UserProfileBloc>(
        () => _i15.UserProfileBloc(gh<_i9.IUserRepository>()));
    gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(gh<_i5.IAuthRepository>()));
    return this;
  }
}
