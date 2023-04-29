import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sqlyze/infrastructure/auth/data_sources/remotes/auth_api_service.dart';
import 'package:sqlyze/infrastructure/network/rest_api/api_service.dart';

GetIt locator = GetIt.instance;

Future<void> initializeDependencies() async {
  final dio = Dio();
  final apiService = ApiService();
  dio.interceptors.add(apiService.interceptor);

  locator.registerSingleton<Dio>(apiService.dioUnauthorizedClient);

  locator.registerSingleton<AuthApiService>(AuthApiService(locator.get()));
}
