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
import 'package:sqlyze/application/auth_bloc/auth_bloc.dart' as _i13;
import 'package:sqlyze/application/lessons/lesson_detail_bloc/lesson_detail_bloc.dart'
    as _i9;
import 'package:sqlyze/application/lessons/lesson_list_bloc/lesson_list_bloc.dart'
    as _i10;
import 'package:sqlyze/application/splashscreen_bloc/splashscreen_bloc.dart'
    as _i11;
import 'package:sqlyze/application/user_profile_bloc/user_profile_bloc.dart'
    as _i12;
import 'package:sqlyze/domain/auth/interfaces/i_auth_repository.dart' as _i3;
import 'package:sqlyze/domain/lessons/interfaces/i_lesson_repository.dart'
    as _i5;
import 'package:sqlyze/domain/user/interfaces/i_user_repository.dart' as _i7;
import 'package:sqlyze/infrastructure/auth/repositories/auth_repository.dart'
    as _i4;
import 'package:sqlyze/infrastructure/lessons/repositories/lesson_repository.dart'
    as _i6;
import 'package:sqlyze/infrastructure/user/repositories/user_repository.dart'
    as _i8;

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
    gh.lazySingleton<_i3.IAuthRepository>(() => _i4.AuthRepository());
    gh.lazySingleton<_i5.ILessonRepository>(() => _i6.LessonRepository());
    gh.lazySingleton<_i7.IUserRepository>(() => _i8.UserRepository());
    gh.factory<_i9.LessonDetailBloc>(
        () => _i9.LessonDetailBloc(gh<_i5.ILessonRepository>()));
    gh.factory<_i10.LessonListBloc>(
        () => _i10.LessonListBloc(gh<_i5.ILessonRepository>()));
    gh.factory<_i11.SplashscreenBloc>(() => _i11.SplashscreenBloc());
    gh.factory<_i12.UserProfileBloc>(
        () => _i12.UserProfileBloc(gh<_i7.IUserRepository>()));
    gh.factory<_i13.AuthBloc>(() => _i13.AuthBloc(gh<_i3.IAuthRepository>()));
    return this;
  }
}
