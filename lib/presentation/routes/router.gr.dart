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
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;

import '../../domain/lessons/entities/lesson_detail.dart' as _i14;
import '../core/pages/page_onboarding.dart' as _i2;
import '../core/pages/page_splash.dart' as _i1;
import '../guest_dashboard/page_guest_dashboard.dart' as _i3;
import '../lessons/chapter_detail/page_chapter_detail.dart' as _i9;
import '../lessons/lesson_detail/page_lesson_detail.dart' as _i8;
import '../lessons/lesson_list/page_lesson_list.dart' as _i7;
import '../lessons/lesson_step_detail/page_lesson_step_detail.dart' as _i10;
import '../otp/page_otp.dart' as _i6;
import '../quizzes/quiz/page_quiz.dart' as _i11;
import '../register/page_register.dart' as _i5;
import '../student_dashboard/page_student_dashboard.dart' as _i4;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    RouteSplash.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.PageSplash(),
      );
    },
    RouteOnboarding.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PageOnboarding(),
      );
    },
    RouteGuestDashboard.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.PageGuestDashboard(),
      );
    },
    RouteStudentDashboard.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.PageStudentDashboard(),
      );
    },
    RouteRegister.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.PageRegister(),
      );
    },
    RouteOtp.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.PageOtp(),
      );
    },
    RouteLessonList.name: (routeData) {
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.PageLessonList(),
      );
    },
    RouteLessonDetail.name: (routeData) {
      final args = routeData.argsAs<RouteLessonDetailArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i8.PageLessonDetail(
          key: args.key,
          lessonName: args.lessonName,
          lessonType: args.lessonType,
        ),
      );
    },
    RouteChapterDetail.name: (routeData) {
      final args = routeData.argsAs<RouteChapterDetailArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.PageChapterDetail(
          key: args.key,
          materialId: args.materialId,
        ),
      );
    },
    RouteLessonStepDetail.name: (routeData) {
      final args = routeData.argsAs<RouteLessonStepDetailArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.PageLessonStepDetail(
          key: args.key,
          lessonDetail: args.lessonDetail,
        ),
      );
    },
    RouteQuiz.name: (routeData) {
      final args = routeData.argsAs<RouteQuizArgs>();
      return _i12.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.PageQuiz(
          key: args.key,
          quizId: args.quizId,
        ),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          RouteSplash.name,
          path: '/',
        ),
        _i12.RouteConfig(
          RouteOnboarding.name,
          path: '/page-onboarding',
        ),
        _i12.RouteConfig(
          RouteGuestDashboard.name,
          path: '/page-guest-dashboard',
        ),
        _i12.RouteConfig(
          RouteStudentDashboard.name,
          path: '/page-student-dashboard',
        ),
        _i12.RouteConfig(
          RouteRegister.name,
          path: '/page-register',
        ),
        _i12.RouteConfig(
          RouteOtp.name,
          path: '/page-otp',
        ),
        _i12.RouteConfig(
          RouteLessonList.name,
          path: '/page-lesson-list',
        ),
        _i12.RouteConfig(
          RouteLessonDetail.name,
          path: '/page-lesson-detail',
        ),
        _i12.RouteConfig(
          RouteChapterDetail.name,
          path: '/page-chapter-detail',
        ),
        _i12.RouteConfig(
          RouteLessonStepDetail.name,
          path: '/page-lesson-step-detail',
        ),
        _i12.RouteConfig(
          RouteQuiz.name,
          path: '/page-quiz',
        ),
      ];
}

/// generated route for
/// [_i1.PageSplash]
class RouteSplash extends _i12.PageRouteInfo<void> {
  const RouteSplash()
      : super(
          RouteSplash.name,
          path: '/',
        );

  static const String name = 'RouteSplash';
}

/// generated route for
/// [_i2.PageOnboarding]
class RouteOnboarding extends _i12.PageRouteInfo<void> {
  const RouteOnboarding()
      : super(
          RouteOnboarding.name,
          path: '/page-onboarding',
        );

  static const String name = 'RouteOnboarding';
}

/// generated route for
/// [_i3.PageGuestDashboard]
class RouteGuestDashboard extends _i12.PageRouteInfo<void> {
  const RouteGuestDashboard()
      : super(
          RouteGuestDashboard.name,
          path: '/page-guest-dashboard',
        );

  static const String name = 'RouteGuestDashboard';
}

/// generated route for
/// [_i4.PageStudentDashboard]
class RouteStudentDashboard extends _i12.PageRouteInfo<void> {
  const RouteStudentDashboard()
      : super(
          RouteStudentDashboard.name,
          path: '/page-student-dashboard',
        );

  static const String name = 'RouteStudentDashboard';
}

/// generated route for
/// [_i5.PageRegister]
class RouteRegister extends _i12.PageRouteInfo<void> {
  const RouteRegister()
      : super(
          RouteRegister.name,
          path: '/page-register',
        );

  static const String name = 'RouteRegister';
}

/// generated route for
/// [_i6.PageOtp]
class RouteOtp extends _i12.PageRouteInfo<void> {
  const RouteOtp()
      : super(
          RouteOtp.name,
          path: '/page-otp',
        );

  static const String name = 'RouteOtp';
}

/// generated route for
/// [_i7.PageLessonList]
class RouteLessonList extends _i12.PageRouteInfo<void> {
  const RouteLessonList()
      : super(
          RouteLessonList.name,
          path: '/page-lesson-list',
        );

  static const String name = 'RouteLessonList';
}

/// generated route for
/// [_i8.PageLessonDetail]
class RouteLessonDetail extends _i12.PageRouteInfo<RouteLessonDetailArgs> {
  RouteLessonDetail({
    _i13.Key? key,
    required String lessonName,
    required int lessonType,
  }) : super(
          RouteLessonDetail.name,
          path: '/page-lesson-detail',
          args: RouteLessonDetailArgs(
            key: key,
            lessonName: lessonName,
            lessonType: lessonType,
          ),
        );

  static const String name = 'RouteLessonDetail';
}

class RouteLessonDetailArgs {
  const RouteLessonDetailArgs({
    this.key,
    required this.lessonName,
    required this.lessonType,
  });

  final _i13.Key? key;

  final String lessonName;

  final int lessonType;

  @override
  String toString() {
    return 'RouteLessonDetailArgs{key: $key, lessonName: $lessonName, lessonType: $lessonType}';
  }
}

/// generated route for
/// [_i9.PageChapterDetail]
class RouteChapterDetail extends _i12.PageRouteInfo<RouteChapterDetailArgs> {
  RouteChapterDetail({
    _i13.Key? key,
    required int materialId,
  }) : super(
          RouteChapterDetail.name,
          path: '/page-chapter-detail',
          args: RouteChapterDetailArgs(
            key: key,
            materialId: materialId,
          ),
        );

  static const String name = 'RouteChapterDetail';
}

class RouteChapterDetailArgs {
  const RouteChapterDetailArgs({
    this.key,
    required this.materialId,
  });

  final _i13.Key? key;

  final int materialId;

  @override
  String toString() {
    return 'RouteChapterDetailArgs{key: $key, materialId: $materialId}';
  }
}

/// generated route for
/// [_i10.PageLessonStepDetail]
class RouteLessonStepDetail
    extends _i12.PageRouteInfo<RouteLessonStepDetailArgs> {
  RouteLessonStepDetail({
    _i13.Key? key,
    required _i14.LessonDetail lessonDetail,
  }) : super(
          RouteLessonStepDetail.name,
          path: '/page-lesson-step-detail',
          args: RouteLessonStepDetailArgs(
            key: key,
            lessonDetail: lessonDetail,
          ),
        );

  static const String name = 'RouteLessonStepDetail';
}

class RouteLessonStepDetailArgs {
  const RouteLessonStepDetailArgs({
    this.key,
    required this.lessonDetail,
  });

  final _i13.Key? key;

  final _i14.LessonDetail lessonDetail;

  @override
  String toString() {
    return 'RouteLessonStepDetailArgs{key: $key, lessonDetail: $lessonDetail}';
  }
}

/// generated route for
/// [_i11.PageQuiz]
class RouteQuiz extends _i12.PageRouteInfo<RouteQuizArgs> {
  RouteQuiz({
    _i13.Key? key,
    required int quizId,
  }) : super(
          RouteQuiz.name,
          path: '/page-quiz',
          args: RouteQuizArgs(
            key: key,
            quizId: quizId,
          ),
        );

  static const String name = 'RouteQuiz';
}

class RouteQuizArgs {
  const RouteQuizArgs({
    this.key,
    required this.quizId,
  });

  final _i13.Key? key;

  final int quizId;

  @override
  String toString() {
    return 'RouteQuizArgs{key: $key, quizId: $quizId}';
  }
}
