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
    as _i13;
import 'package:sqlyze/application/auth_bloc/auth_bloc.dart' as _i22;
import 'package:sqlyze/application/lessons/lesson_detail_bloc/lesson_detail_bloc.dart'
    as _i14;
import 'package:sqlyze/application/lessons/lesson_list_bloc/lesson_list_bloc.dart'
    as _i15;
import 'package:sqlyze/application/quizzes/quiz_detail_bloc/quiz_detail_bloc.dart'
    as _i16;
import 'package:sqlyze/application/quizzes/quiz_questions_bloc/quiz_questions_bloc.dart'
    as _i17;
import 'package:sqlyze/application/quizzes/quiz_result_bloc/quiz_result_bloc.dart'
    as _i18;
import 'package:sqlyze/application/register_bloc/register_bloc.dart' as _i19;
import 'package:sqlyze/application/splashscreen_bloc/splashscreen_bloc.dart'
    as _i20;
import 'package:sqlyze/application/user_profile_bloc/user_profile_bloc.dart'
    as _i21;
import 'package:sqlyze/domain/analytics/interfaces/i_analytic_repository.dart'
    as _i3;
import 'package:sqlyze/domain/auth/interfaces/i_auth_repository.dart' as _i5;
import 'package:sqlyze/domain/lessons/interfaces/i_lesson_repository.dart'
    as _i7;
import 'package:sqlyze/domain/quizzes/interfaces/i_quiz_repository.dart' as _i9;
import 'package:sqlyze/domain/user/interfaces/i_user_repository.dart' as _i11;
import 'package:sqlyze/infrastructure/analytics/repositories/analytic_repository.dart'
    as _i4;
import 'package:sqlyze/infrastructure/auth/repositories/auth_repository.dart'
    as _i6;
import 'package:sqlyze/infrastructure/lessons/repositories/lesson_repository.dart'
    as _i8;
import 'package:sqlyze/infrastructure/quizzes/repositories/quiz_repository.dart'
    as _i10;
import 'package:sqlyze/infrastructure/user/repositories/user_repository.dart'
    as _i12;

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
    gh.lazySingleton<_i9.IQuizRepository>(() => _i10.QuizRepository());
    gh.lazySingleton<_i11.IUserRepository>(() => _i12.UserRepository());
    gh.factory<_i13.LearningAnalyticBloc>(
        () => _i13.LearningAnalyticBloc(gh<_i3.IAnalyticRepository>()));
    gh.factory<_i14.LessonDetailBloc>(
        () => _i14.LessonDetailBloc(gh<_i7.ILessonRepository>()));
    gh.factory<_i15.LessonListBloc>(
        () => _i15.LessonListBloc(gh<_i7.ILessonRepository>()));
    gh.factory<_i16.QuizDetailBloc>(
        () => _i16.QuizDetailBloc(gh<_i9.IQuizRepository>()));
    gh.factory<_i17.QuizQuestionsBloc>(
        () => _i17.QuizQuestionsBloc(gh<_i9.IQuizRepository>()));
    gh.factory<_i18.QuizResultBloc>(
        () => _i18.QuizResultBloc(gh<_i9.IQuizRepository>()));
    gh.factory<_i19.RegisterBloc>(
        () => _i19.RegisterBloc(gh<_i5.IAuthRepository>()));
    gh.factory<_i20.SplashscreenBloc>(() => _i20.SplashscreenBloc());
    gh.factory<_i21.UserProfileBloc>(
        () => _i21.UserProfileBloc(gh<_i11.IUserRepository>()));
    gh.factory<_i22.AuthBloc>(() => _i22.AuthBloc(gh<_i5.IAuthRepository>()));
    return this;
  }
}
