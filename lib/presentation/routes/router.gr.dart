// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../core/pages/page_onboarding.dart' as _i2;
import '../core/pages/page_splash.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    RouteSplash.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.PageSplash(),
      );
    },
    RouteOnboarding.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PageOnboarding(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          RouteSplash.name,
          path: '/',
        ),
        _i3.RouteConfig(
          RouteOnboarding.name,
          path: '/page-onboarding',
        ),
      ];
}

/// generated route for
/// [_i1.PageSplash]
class RouteSplash extends _i3.PageRouteInfo<void> {
  const RouteSplash()
      : super(
          RouteSplash.name,
          path: '/',
        );

  static const String name = 'RouteSplash';
}

/// generated route for
/// [_i2.PageOnboarding]
class RouteOnboarding extends _i3.PageRouteInfo<void> {
  const RouteOnboarding()
      : super(
          RouteOnboarding.name,
          path: '/page-onboarding',
        );

  static const String name = 'RouteOnboarding';
}
