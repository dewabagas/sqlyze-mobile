import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:alice/alice.dart';
import 'package:sqlyze/domain/core/utils/firebase_remote_config.dart';
import 'package:sqlyze/infrastructure/analytics/data_sources/remotes/analytic_api_service.dart';
import 'package:sqlyze/infrastructure/auth/data_sources/remotes/auth_api_service.dart';
import 'package:sqlyze/infrastructure/lessons/data_sources/remotes/lesson_api_service.dart';
import 'package:sqlyze/infrastructure/network/rest_api/api_service.dart';
import 'package:sqlyze/infrastructure/quizzes/data_sources/remotes/quiz_api_service.dart';
import 'package:sqlyze/infrastructure/user/data_sources/remotes/user_api_service.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';

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
  locator.registerSingleton(FirebaseRemoteConfigService());
  _injectMixPanel();
}

Future<void> _injectMixPanel() async {
  Mixpanel _mixpanel = await Mixpanel.init("bf4f94a9ffb596c0756624c050f73c2d",
      optOutTrackingDefault: false, trackAutomaticEvents: true);
  locator.registerSingleton(_mixpanel);
}
