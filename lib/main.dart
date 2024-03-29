import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/domain/core/utils/firebase_remote_config.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/locator.dart';
import 'package:sqlyze/presentation/core/app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // final FirebaseRemoteConfigService remoteConfigService = getIt<FirebaseRemoteConfigService>();
  // remoteConfigService.initialize();
  await Firebase.initializeApp();
  await _initializeCrashlytics();
  await dotenv.load(fileName: ".env");
  configureInjection(Environment.dev);
  await initializeDependencies();
  configLoading();
  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://a29a8c9ae54e298b7ea741ad77ce04a5@o4505617706713088.ingest.sentry.io/4505617711890432';
      options.tracesSampleRate = 1.0;
    },
    appRunner: () => runApp(App()),
  );
}

Future<void> _initializeCrashlytics() async {
  if (!kIsWeb) {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  }
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.chasingDots
    ..loadingStyle = EasyLoadingStyle.light
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = AppColors.primary
    ..backgroundColor = Colors.white
    ..indicatorColor = AppColors.primary
    ..textColor = AppColors.charcoal
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}
