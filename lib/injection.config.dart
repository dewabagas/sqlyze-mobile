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
    as _i14;
import 'package:sqlyze/application/auth_bloc/auth_bloc.dart' as _i25;
import 'package:sqlyze/application/greetings_bloc/greetings_bloc.dart' as _i3;
import 'package:sqlyze/application/lessons/lesson_detail_bloc/lesson_detail_bloc.dart'
    as _i15;
import 'package:sqlyze/application/lessons/lesson_list_bloc/lesson_list_bloc.dart'
    as _i16;
import 'package:sqlyze/application/quizzes/quiz_answer_submission_cubit/quiz_answer_submission_cubit.dart'
    as _i17;
import 'package:sqlyze/application/quizzes/quiz_detail_bloc/quiz_detail_bloc.dart'
    as _i18;
import 'package:sqlyze/application/quizzes/quiz_questions_bloc/quiz_questions_bloc.dart'
    as _i19;
import 'package:sqlyze/application/quizzes/quiz_result_bloc/quiz_result_bloc.dart'
    as _i20;
import 'package:sqlyze/application/quizzes/quiz_unlock_cubit/quiz_unlock_cubit.dart'
    as _i21;
import 'package:sqlyze/application/register_bloc/register_bloc.dart' as _i22;
import 'package:sqlyze/application/splashscreen_bloc/splashscreen_bloc.dart'
    as _i23;
import 'package:sqlyze/application/user_profile_bloc/user_profile_bloc.dart'
    as _i24;
import 'package:sqlyze/domain/analytics/interfaces/i_analytic_repository.dart'
    as _i4;
import 'package:sqlyze/domain/auth/interfaces/i_auth_repository.dart' as _i6;
import 'package:sqlyze/domain/lessons/interfaces/i_lesson_repository.dart'
    as _i8;
import 'package:sqlyze/domain/quizzes/interfaces/i_quiz_repository.dart'
    as _i10;
import 'package:sqlyze/domain/user/interfaces/i_user_repository.dart' as _i12;
import 'package:sqlyze/infrastructure/analytics/repositories/analytic_repository.dart'
    as _i5;
import 'package:sqlyze/infrastructure/auth/repositories/auth_repository.dart'
    as _i7;
import 'package:sqlyze/infrastructure/lessons/repositories/lesson_repository.dart'
    as _i9;
import 'package:sqlyze/infrastructure/quizzes/repositories/quiz_repository.dart'
    as _i11;
import 'package:sqlyze/infrastructure/user/repositories/user_repository.dart'
    as _i13;

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
    gh.factory<_i3.GreetingsBloc>(() => _i3.GreetingsBloc());
    gh.lazySingleton<_i4.IAnalyticRepository>(() => _i5.AnalyticRepository());
    gh.lazySingleton<_i6.IAuthRepository>(() => _i7.AuthRepository());
    gh.lazySingleton<_i8.ILessonRepository>(() => _i9.LessonRepository());
    gh.lazySingleton<_i10.IQuizRepository>(() => _i11.QuizRepository());
    gh.lazySingleton<_i12.IUserRepository>(() => _i13.UserRepository());
    gh.factory<_i14.LearningAnalyticBloc>(
        () => _i14.LearningAnalyticBloc(gh<_i4.IAnalyticRepository>()));
    gh.factory<_i15.LessonDetailBloc>(
        () => _i15.LessonDetailBloc(gh<_i8.ILessonRepository>()));
    gh.factory<_i16.LessonListBloc>(
        () => _i16.LessonListBloc(gh<_i8.ILessonRepository>()));
    gh.factory<_i17.QuizAnswerSubmissionCubit>(
        () => _i17.QuizAnswerSubmissionCubit(gh<_i10.IQuizRepository>()));
    gh.factory<_i18.QuizDetailBloc>(
        () => _i18.QuizDetailBloc(gh<_i10.IQuizRepository>()));
    gh.factory<_i19.QuizQuestionsBloc>(
        () => _i19.QuizQuestionsBloc(gh<_i10.IQuizRepository>()));
    gh.factory<_i20.QuizResultBloc>(
        () => _i20.QuizResultBloc(gh<_i10.IQuizRepository>()));
    gh.factory<_i21.QuizUnlockCubit>(
        () => _i21.QuizUnlockCubit(gh<_i10.IQuizRepository>()));
    gh.factory<_i22.RegisterBloc>(
        () => _i22.RegisterBloc(gh<_i6.IAuthRepository>()));
    gh.factory<_i23.SplashscreenBloc>(() => _i23.SplashscreenBloc());
    gh.factory<_i24.UserProfileBloc>(
        () => _i24.UserProfileBloc(gh<_i12.IUserRepository>()));
    gh.factory<_i25.AuthBloc>(() => _i25.AuthBloc(gh<_i6.IAuthRepository>()));
    return this;
  }
}
