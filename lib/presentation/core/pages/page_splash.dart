import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sqlyze/domain/core/constants/preference_constants.dart';
import 'package:sqlyze/domain/core/helpers/preference_helper.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';

class PageSplash extends StatefulWidget {
  const PageSplash({super.key});

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () async {
      log('Splash');
      AutoRouter.of(context).pushAndPopUntil(const RouteOnboarding(),
          predicate: (route) => false);
    });
    super.initState();
  }

  Future<bool> isAlreadyLoggedIn() async {
    bool isLogin = true;
    var isLoggedIn =
        await getBoolValuesPreference(key: PreferenceConstants.isLoggedIn);
    if (isLoggedIn == null) {
      isLogin = false;
    }
    return isLogin;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox();
    return FutureBuilder<bool>(
        future: isAlreadyLoggedIn(),
        builder: (context, snapshot) {
          final isLoggedIn = snapshot.data;
          log('isLoggedIn $isLoggedIn');
          if (snapshot.connectionState == ConnectionState.done) {
            if (isLoggedIn == true) {
              AutoRouter.of(context).pushAndPopUntil(
                  const RouteStudentDashboard(),
                  predicate: (route) => false);
            } else {
              AutoRouter.of(context).pushAndPopUntil(const RouteOnboarding(),
                  predicate: (route) => false);
            }
            return const SizedBox.shrink();
          } else {
            return const SizedBox.shrink();
          }
        });
  }
}
