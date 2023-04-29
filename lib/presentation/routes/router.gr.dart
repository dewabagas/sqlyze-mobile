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
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../core/pages/page_onboarding.dart' as _i2;
import '../core/pages/page_splash.dart' as _i1;
import '../guest_dashboard/page_guest_dashboard.dart' as _i3;
import '../lessons/chapter_detail/page_chapter_detail.dart' as _i9;
import '../lessons/lesson_detail/page_lesson_detail.dart' as _i8;
import '../lessons/lesson_list/page_lesson_list.dart' as _i7;
import '../otp/page_otp.dart' as _i6;
import '../register/page_register.dart' as _i5;
import '../student_dashboard/page_student_dashboard.dart' as _i4;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    RouteSplash.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.PageSplash(),
      );
    },
    RouteOnboarding.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PageOnboarding(),
      );
    },
    RouteGuestDashboard.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.PageGuestDashboard(),
      );
    },
    RouteStudentDashboard.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.PageStudentDashboard(),
      );
    },
    RouteRegister.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.PageRegister(),
      );
    },
    RouteOtp.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.PageOtp(),
      );
    },
    RouteLessonList.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.PageLessonList(),
      );
    },
    RouteLessonDetail.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.PageLessonDetail(),
      );
    },
    RouteChapterDetail.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.PageChapterDetail(),
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          RouteSplash.name,
          path: '/',
        ),
        _i10.RouteConfig(
          RouteOnboarding.name,
          path: '/page-onboarding',
        ),
        _i10.RouteConfig(
          RouteGuestDashboard.name,
          path: '/page-guest-dashboard',
        ),
        _i10.RouteConfig(
          RouteStudentDashboard.name,
          path: '/page-student-dashboard',
        ),
        _i10.RouteConfig(
          RouteRegister.name,
          path: '/page-register',
        ),
        _i10.RouteConfig(
          RouteOtp.name,
          path: '/page-otp',
        ),
        _i10.RouteConfig(
          RouteLessonList.name,
          path: '/page-lesson-list',
        ),
        _i10.RouteConfig(
          RouteLessonDetail.name,
          path: '/page-lesson-detail',
        ),
        _i10.RouteConfig(
          RouteChapterDetail.name,
          path: '/page-chapter-detail',
        ),
      ];
}

/// generated route for
/// [_i1.PageSplash]
class RouteSplash extends _i10.PageRouteInfo<void> {
  const RouteSplash()
      : super(
          RouteSplash.name,
          path: '/',
        );

  static const String name = 'RouteSplash';
}

/// generated route for
/// [_i2.PageOnboarding]
class RouteOnboarding extends _i10.PageRouteInfo<void> {
  const RouteOnboarding()
      : super(
          RouteOnboarding.name,
          path: '/page-onboarding',
        );

  static const String name = 'RouteOnboarding';
}

/// generated route for
/// [_i3.PageGuestDashboard]
class RouteGuestDashboard extends _i10.PageRouteInfo<void> {
  const RouteGuestDashboard()
      : super(
          RouteGuestDashboard.name,
          path: '/page-guest-dashboard',
        );

  static const String name = 'RouteGuestDashboard';
}

/// generated route for
/// [_i4.PageStudentDashboard]
class RouteStudentDashboard extends _i10.PageRouteInfo<void> {
  const RouteStudentDashboard()
      : super(
          RouteStudentDashboard.name,
          path: '/page-student-dashboard',
        );

  static const String name = 'RouteStudentDashboard';
}

/// generated route for
/// [_i5.PageRegister]
class RouteRegister extends _i10.PageRouteInfo<void> {
  const RouteRegister()
      : super(
          RouteRegister.name,
          path: '/page-register',
        );

  static const String name = 'RouteRegister';
}

/// generated route for
/// [_i6.PageOtp]
class RouteOtp extends _i10.PageRouteInfo<void> {
  const RouteOtp()
      : super(
          RouteOtp.name,
          path: '/page-otp',
        );

  static const String name = 'RouteOtp';
}

/// generated route for
/// [_i7.PageLessonList]
class RouteLessonList extends _i10.PageRouteInfo<void> {
  const RouteLessonList()
      : super(
          RouteLessonList.name,
          path: '/page-lesson-list',
        );

  static const String name = 'RouteLessonList';
}

/// generated route for
/// [_i8.PageLessonDetail]
class RouteLessonDetail extends _i10.PageRouteInfo<void> {
  const RouteLessonDetail()
      : super(
          RouteLessonDetail.name,
          path: '/page-lesson-detail',
        );

  static const String name = 'RouteLessonDetail';
}

/// generated route for
/// [_i9.PageChapterDetail]
class RouteChapterDetail extends _i10.PageRouteInfo<void> {
  const RouteChapterDetail()
      : super(
          RouteChapterDetail.name,
          path: '/page-chapter-detail',
        );

  static const String name = 'RouteChapterDetail';
}
