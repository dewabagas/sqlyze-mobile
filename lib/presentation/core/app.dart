import 'package:alice/alice.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/domain/core/l10n/app_localizations.dart';
import 'package:sqlyze/presentation/core/constants/app_constants.dart';
import 'package:sqlyze/presentation/core/styles/app_theme.dart';
import 'package:sqlyze/presentation/core/utils/lifecycle_container.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';

final alice = Alice(
    darkTheme: true,
    showInspectorOnShake: true,
    showNotification: true,
    navigatorKey: GlobalKey<NavigatorState>());

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

final appRouter = AppRouter();
final routerDelegate = appRouter.delegate();

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return LifecycleContainer(
        child: ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, child) {
        return MaterialApp.router(
          scaffoldMessengerKey: scaffoldMessengerKey,
          routerDelegate: appRouter.delegate(
            navigatorObservers: () => [AutoRouterObserver()],
          ),
          routeInformationParser: appRouter.defaultRouteParser(),
          title: AppConstants.appName,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          builder: EasyLoading.init(),
          localeResolutionCallback: (locale, supportedLocales) {
            for (final supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale!.languageCode &&
                  supportedLocale.countryCode == locale.countryCode) {
                return supportedLocale;
              }
            }

            return supportedLocales.first;
          },
        );
      },
    ));
  }
}
