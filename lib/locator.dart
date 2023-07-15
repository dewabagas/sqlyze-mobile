import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:alice/alice.dart';
import 'package:sqlyze/infrastructure/analytics/data_sources/remotes/analytic_api_service.dart';
import 'package:sqlyze/infrastructure/auth/data_sources/remotes/auth_api_service.dart';
import 'package:sqlyze/infrastructure/lessons/data_sources/remotes/lesson_api_service.dart';
import 'package:sqlyze/infrastructure/network/rest_api/api_service.dart';
import 'package:sqlyze/infrastructure/quizzes/data_sources/remotes/quiz_api_service.dart';
import 'package:sqlyze/infrastructure/user/data_sources/remotes/user_api_service.dart';

GetIt locator = GetIt.instance;
Alice alice = Alice(showNotification: true);

Future<void> initializeDependencies() async {
  final apiService = ApiService();

  apiService.dioUnauthorizedClient.interceptors.add(alice.getDioInterceptor());
  apiService.dioAuthorizedClient.interceptors.add(alice.getDioInterceptor());

  locator.registerSingleton<Dio>(apiService.dioUnauthorizedClient);
  locator.registerSingleton<Dio>(apiService.dioAuthorizedClient,
      instanceName: 'AuthorizedClient');

  locator.registerSingleton<AuthApiService>(AuthApiService(locator.get<Dio>()));
  locator.registerSingleton<UserApiService>(
      UserApiService(locator.get<Dio>(instanceName: 'AuthorizedClient')));
  locator.registerSingleton<LessonApiService>(
      LessonApiService(locator.get<Dio>(instanceName: 'AuthorizedClient')));
  locator.registerSingleton<AnalyticApiService>(
      AnalyticApiService(locator.get<Dio>(instanceName: 'AuthorizedClient')));
  locator.registerSingleton<QuizApiService>(
      QuizApiService(locator.get<Dio>(instanceName: 'AuthorizedClient')));
}
