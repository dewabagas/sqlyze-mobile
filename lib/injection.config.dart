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
import 'package:sqlyze/application/auth_bloc/auth_bloc.dart' as _i9;
import 'package:sqlyze/application/splashscreen_bloc/splashscreen_bloc.dart'
    as _i7;
import 'package:sqlyze/application/user_profile_bloc/user_profile_bloc.dart'
    as _i8;
import 'package:sqlyze/domain/auth/interfaces/i_auth_repository.dart' as _i3;
import 'package:sqlyze/domain/user/interfaces/i_user_repository.dart' as _i5;
import 'package:sqlyze/infrastructure/auth/repositories/auth_repository.dart'
    as _i4;
import 'package:sqlyze/infrastructure/user/repositories/user_repository.dart'
    as _i6;

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
    gh.lazySingleton<_i5.IUserRepository>(() => _i6.UserRepository());
    gh.factory<_i7.SplashscreenBloc>(() => _i7.SplashscreenBloc());
    gh.factory<_i8.UserProfileBloc>(
        () => _i8.UserProfileBloc(gh<_i5.IUserRepository>()));
    gh.factory<_i9.AuthBloc>(() => _i9.AuthBloc(gh<_i3.IAuthRepository>()));
    return this;
  }
}
