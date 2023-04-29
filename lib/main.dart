import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:injectable/injectable.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/locator.dart';
import 'package:sqlyze/presentation/core/app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp();
  await _initializeCrashlytics();
  await dotenv.load(fileName: ".env");
  configureInjection(Environment.dev);
  await initializeDependencies();
  runApp(App());
}

Future<void> _initializeCrashlytics() async {
  if (!kIsWeb) {
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
  }
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
}
