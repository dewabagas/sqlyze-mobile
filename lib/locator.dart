import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:alice/alice.dart';
import 'package:sqlyze/infrastructure/auth/data_sources/remotes/auth_api_service.dart';
import 'package:sqlyze/infrastructure/network/rest_api/api_service.dart';
import 'package:sqlyze/infrastructure/network/rest_api/authenticated_interceptor.dart';
import 'package:sqlyze/infrastructure/user/data_sources/remotes/user_api_service.dart';

GetIt locator = GetIt.instance;
Alice alice = Alice(showNotification: true);

Future<void> initializeDependencies() async {
  final apiService = ApiService();

  // Add Alice to Dio interceptors
  apiService.dioUnauthorizedClient.interceptors.add(alice.getDioInterceptor());
  apiService.dioAuthorizedClient.interceptors.add(alice.getDioInterceptor());

  locator.registerSingleton<Dio>(apiService.dioUnauthorizedClient);
  locator.registerSingleton<Dio>(apiService.dioAuthorizedClient,
      instanceName: 'AuthorizedClient');

  locator.registerSingleton<AuthApiService>(AuthApiService(locator.get<Dio>()));
  locator.registerSingleton<UserApiService>(
      UserApiService(locator.get<Dio>(instanceName: 'AuthorizedClient')));
}
