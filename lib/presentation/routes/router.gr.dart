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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../core/pages/page_onboarding.dart' as _i2;
import '../core/pages/page_splash.dart' as _i1;
import '../guest_dashboard/page_guest_dashboard.dart' as _i3;
import '../register/page_register.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    RouteSplash.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.PageSplash(),
      );
    },
    RouteOnboarding.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PageOnboarding(),
      );
    },
    RouteGuestDashboard.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.PageGuestDashboard(),
      );
    },
    RouteRegister.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.PageRegister(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          RouteSplash.name,
          path: '/',
        ),
        _i5.RouteConfig(
          RouteOnboarding.name,
          path: '/page-onboarding',
        ),
        _i5.RouteConfig(
          RouteGuestDashboard.name,
          path: '/page-guest-dashboard',
        ),
        _i5.RouteConfig(
          RouteRegister.name,
          path: '/page-register',
        ),
      ];
}

/// generated route for
/// [_i1.PageSplash]
class RouteSplash extends _i5.PageRouteInfo<void> {
  const RouteSplash()
      : super(
          RouteSplash.name,
          path: '/',
        );

  static const String name = 'RouteSplash';
}

/// generated route for
/// [_i2.PageOnboarding]
class RouteOnboarding extends _i5.PageRouteInfo<void> {
  const RouteOnboarding()
      : super(
          RouteOnboarding.name,
          path: '/page-onboarding',
        );

  static const String name = 'RouteOnboarding';
}

/// generated route for
/// [_i3.PageGuestDashboard]
class RouteGuestDashboard extends _i5.PageRouteInfo<void> {
  const RouteGuestDashboard()
      : super(
          RouteGuestDashboard.name,
          path: '/page-guest-dashboard',
        );

  static const String name = 'RouteGuestDashboard';
}

/// generated route for
/// [_i4.PageRegister]
class RouteRegister extends _i5.PageRouteInfo<void> {
  const RouteRegister()
      : super(
          RouteRegister.name,
          path: '/page-register',
        );

  static const String name = 'RouteRegister';
}
