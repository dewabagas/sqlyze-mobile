import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqlyze/application/splashscreen_bloc/splashscreen_bloc.dart';
import 'package:sqlyze/domain/core/constants/preference_constants.dart';
import 'package:sqlyze/domain/core/helpers/preference_helper.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';

class PageSplash extends StatefulWidget {
  const PageSplash({super.key});

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashscreenBloc>(
        create: (context) =>
            getIt<SplashscreenBloc>()..add(const SplashscreenEvent.init()),
        child: MultiBlocListener(
          listeners: [
            BlocListener<SplashscreenBloc, SplashscreenState>(
              listener: (context, state) {
                state.map(
                    initial: (_) => const SizedBox.shrink(),
                    loadInProgress: (_) => const SizedBox.shrink(),
                    loadSuccess: (value) async {
                      debugPrint('value splash ${value.routerName}');
                      if (value.routerName == RouteOnboarding.name) {
                        AutoRouter.of(context).pushAndPopUntil(
                            const RouteOnboarding(),
                            predicate: (route) => false);
                      } else if (value.routerName ==
                          RouteStudentDashboard.name) {
                        debugPrint('student');
                        await context.router.pushAndPopUntil(
                            const RouteStudentDashboard(),
                            predicate: (route) => false);
                      } else {
                        removeAllValuesPreference();
                        AutoRouter.of(context).pushNamed(value.routerName);
                      }
                    },
                    loadFailure: (_) {
                      log('failureeee splash');
                    });
              },
            ),
          ],
          child: const SizedBox.shrink(),
        ));
  }
}
