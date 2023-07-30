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
import 'package:auto_route/auto_route.dart' as _i18;
import 'package:flutter/material.dart' as _i19;

import '../../domain/lessons/entities/lesson_detail.dart' as _i20;
import '../../domain/quizzes/entitites/quiz_detail.dart' as _i21;
import '../../domain/user/entities/user_profile.dart' as _i22;
import '../certificate/page_certificate.dart' as _i17;
import '../core/pages/page_onboarding.dart' as _i2;
import '../core/pages/page_splash.dart' as _i1;
import '../discussions/page_discussion.dart' as _i14;
import '../force_update/page_force_update.dart' as _i15;
import '../guest_dashboard/page_guest_dashboard.dart' as _i3;
import '../lessons/chapter_detail/page_chapter_detail.dart' as _i10;
import '../lessons/lesson_detail/page_lesson_detail.dart' as _i9;
import '../lessons/lesson_list/page_lesson_list.dart' as _i8;
import '../lessons/lesson_step_detail/page_lesson_step_detail.dart' as _i11;
import '../login/page_login.dart' as _i5;
import '../my_account/page_my_account.dart' as _i16;
import '../otp/page_otp.dart' as _i7;
import '../quizzes/quiz/page_quiz.dart' as _i12;
import '../quizzes/quiz_result/page_quiz_result.dart' as _i13;
import '../register/page_register.dart' as _i6;
import '../student_dashboard/page_student_dashboard.dart' as _i4;

class AppRouter extends _i18.RootStackRouter {
  AppRouter([_i19.GlobalKey<_i19.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i18.PageFactory> pagesMap = {
    RouteSplash.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.PageSplash(),
      );
    },
    RouteOnboarding.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PageOnboarding(),
      );
    },
    RouteGuestDashboard.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.PageGuestDashboard(),
      );
    },
    RouteStudentDashboard.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.PageStudentDashboard(),
      );
    },
    RouteLogin.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.PageLogin(),
      );
    },
    RouteRegister.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.PageRegister(),
      );
    },
    RouteOtp.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.PageOtp(),
      );
    },
    RouteLessonList.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.PageLessonList(),
      );
    },
    RouteLessonDetail.name: (routeData) {
      final args = routeData.argsAs<RouteLessonDetailArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.PageLessonDetail(
          key: args.key,
          lessonName: args.lessonName,
          lessonType: args.lessonType,
        ),
      );
    },
    RouteChapterDetail.name: (routeData) {
      final args = routeData.argsAs<RouteChapterDetailArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.PageChapterDetail(
          key: args.key,
          materialId: args.materialId,
        ),
      );
    },
    RouteLessonStepDetail.name: (routeData) {
      final args = routeData.argsAs<RouteLessonStepDetailArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i11.PageLessonStepDetail(
          key: args.key,
          lessonDetail: args.lessonDetail,
        ),
      );
    },
    RouteQuiz.name: (routeData) {
      final args = routeData.argsAs<RouteQuizArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i12.PageQuiz(
          key: args.key,
          quizDetail: args.quizDetail,
        ),
      );
    },
    RouteQuizResult.name: (routeData) {
      final args = routeData.argsAs<RouteQuizResultArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i13.PageQuizResult(
          key: args.key,
          quizDetail: args.quizDetail,
        ),
      );
    },
    RouteDiscussion.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.PageDiscussion(),
      );
    },
    RouteForceUpdate.name: (routeData) {
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.PageForceUpdate(),
      );
    },
    RouteMyAccount.name: (routeData) {
      final args = routeData.argsAs<RouteMyAccountArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i16.PageMyAccount(
          key: args.key,
          userProfile: args.userProfile,
        ),
      );
    },
    RouteCertificate.name: (routeData) {
      final args = routeData.argsAs<RouteCertificateArgs>();
      return _i18.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i17.PageCertificate(
          name: args.name,
          date: args.date,
        ),
      );
    },
  };

  @override
  List<_i18.RouteConfig> get routes => [
        _i18.RouteConfig(
          RouteSplash.name,
          path: '/',
        ),
        _i18.RouteConfig(
          RouteOnboarding.name,
          path: '/page-onboarding',
        ),
        _i18.RouteConfig(
          RouteGuestDashboard.name,
          path: '/page-guest-dashboard',
        ),
        _i18.RouteConfig(
          RouteStudentDashboard.name,
          path: '/page-student-dashboard',
        ),
        _i18.RouteConfig(
          RouteLogin.name,
          path: '/page-login',
        ),
        _i18.RouteConfig(
          RouteRegister.name,
          path: '/page-register',
        ),
        _i18.RouteConfig(
          RouteOtp.name,
          path: '/page-otp',
        ),
        _i18.RouteConfig(
          RouteLessonList.name,
          path: '/page-lesson-list',
        ),
        _i18.RouteConfig(
          RouteLessonDetail.name,
          path: '/page-lesson-detail',
        ),
        _i18.RouteConfig(
          RouteChapterDetail.name,
          path: '/page-chapter-detail',
        ),
        _i18.RouteConfig(
          RouteLessonStepDetail.name,
          path: '/page-lesson-step-detail',
        ),
        _i18.RouteConfig(
          RouteQuiz.name,
          path: '/page-quiz',
        ),
        _i18.RouteConfig(
          RouteQuizResult.name,
          path: '/page-quiz-result',
        ),
        _i18.RouteConfig(
          RouteDiscussion.name,
          path: '/page-discussion',
        ),
        _i18.RouteConfig(
          RouteForceUpdate.name,
          path: '/page-force-update',
        ),
        _i18.RouteConfig(
          RouteMyAccount.name,
          path: '/page-my-account',
        ),
        _i18.RouteConfig(
          RouteCertificate.name,
          path: '/page-certificate',
        ),
      ];
}

/// generated route for
/// [_i1.PageSplash]
class RouteSplash extends _i18.PageRouteInfo<void> {
  const RouteSplash()
      : super(
          RouteSplash.name,
          path: '/',
        );

  static const String name = 'RouteSplash';
}

/// generated route for
/// [_i2.PageOnboarding]
class RouteOnboarding extends _i18.PageRouteInfo<void> {
  const RouteOnboarding()
      : super(
          RouteOnboarding.name,
          path: '/page-onboarding',
        );

  static const String name = 'RouteOnboarding';
}

/// generated route for
/// [_i3.PageGuestDashboard]
class RouteGuestDashboard extends _i18.PageRouteInfo<void> {
  const RouteGuestDashboard()
      : super(
          RouteGuestDashboard.name,
          path: '/page-guest-dashboard',
        );

  static const String name = 'RouteGuestDashboard';
}

/// generated route for
/// [_i4.PageStudentDashboard]
class RouteStudentDashboard extends _i18.PageRouteInfo<void> {
  const RouteStudentDashboard()
      : super(
          RouteStudentDashboard.name,
          path: '/page-student-dashboard',
        );

  static const String name = 'RouteStudentDashboard';
}

/// generated route for
/// [_i5.PageLogin]
class RouteLogin extends _i18.PageRouteInfo<void> {
  const RouteLogin()
      : super(
          RouteLogin.name,
          path: '/page-login',
        );

  static const String name = 'RouteLogin';
}

/// generated route for
/// [_i6.PageRegister]
class RouteRegister extends _i18.PageRouteInfo<void> {
  const RouteRegister()
      : super(
          RouteRegister.name,
          path: '/page-register',
        );

  static const String name = 'RouteRegister';
}

/// generated route for
/// [_i7.PageOtp]
class RouteOtp extends _i18.PageRouteInfo<void> {
  const RouteOtp()
      : super(
          RouteOtp.name,
          path: '/page-otp',
        );

  static const String name = 'RouteOtp';
}

/// generated route for
/// [_i8.PageLessonList]
class RouteLessonList extends _i18.PageRouteInfo<void> {
  const RouteLessonList()
      : super(
          RouteLessonList.name,
          path: '/page-lesson-list',
        );

  static const String name = 'RouteLessonList';
}

/// generated route for
/// [_i9.PageLessonDetail]
class RouteLessonDetail extends _i18.PageRouteInfo<RouteLessonDetailArgs> {
  RouteLessonDetail({
    _i19.Key? key,
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

  final _i19.Key? key;

  final String lessonName;

  final int lessonType;

  @override
  String toString() {
    return 'RouteLessonDetailArgs{key: $key, lessonName: $lessonName, lessonType: $lessonType}';
  }
}

/// generated route for
/// [_i10.PageChapterDetail]
class RouteChapterDetail extends _i18.PageRouteInfo<RouteChapterDetailArgs> {
  RouteChapterDetail({
    _i19.Key? key,
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

  final _i19.Key? key;

  final int materialId;

  @override
  String toString() {
    return 'RouteChapterDetailArgs{key: $key, materialId: $materialId}';
  }
}

/// generated route for
/// [_i11.PageLessonStepDetail]
class RouteLessonStepDetail
    extends _i18.PageRouteInfo<RouteLessonStepDetailArgs> {
  RouteLessonStepDetail({
    _i19.Key? key,
    required _i20.LessonDetail lessonDetail,
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

  final _i19.Key? key;

  final _i20.LessonDetail lessonDetail;

  @override
  String toString() {
    return 'RouteLessonStepDetailArgs{key: $key, lessonDetail: $lessonDetail}';
  }
}

/// generated route for
/// [_i12.PageQuiz]
class RouteQuiz extends _i18.PageRouteInfo<RouteQuizArgs> {
  RouteQuiz({
    _i19.Key? key,
    required _i21.QuizDetail quizDetail,
  }) : super(
          RouteQuiz.name,
          path: '/page-quiz',
          args: RouteQuizArgs(
            key: key,
            quizDetail: quizDetail,
          ),
        );

  static const String name = 'RouteQuiz';
}

class RouteQuizArgs {
  const RouteQuizArgs({
    this.key,
    required this.quizDetail,
  });

  final _i19.Key? key;

  final _i21.QuizDetail quizDetail;

  @override
  String toString() {
    return 'RouteQuizArgs{key: $key, quizDetail: $quizDetail}';
  }
}

/// generated route for
/// [_i13.PageQuizResult]
class RouteQuizResult extends _i18.PageRouteInfo<RouteQuizResultArgs> {
  RouteQuizResult({
    _i19.Key? key,
    required _i21.QuizDetail quizDetail,
  }) : super(
          RouteQuizResult.name,
          path: '/page-quiz-result',
          args: RouteQuizResultArgs(
            key: key,
            quizDetail: quizDetail,
          ),
        );

  static const String name = 'RouteQuizResult';
}

class RouteQuizResultArgs {
  const RouteQuizResultArgs({
    this.key,
    required this.quizDetail,
  });

  final _i19.Key? key;

  final _i21.QuizDetail quizDetail;

  @override
  String toString() {
    return 'RouteQuizResultArgs{key: $key, quizDetail: $quizDetail}';
  }
}

/// generated route for
/// [_i14.PageDiscussion]
class RouteDiscussion extends _i18.PageRouteInfo<void> {
  const RouteDiscussion()
      : super(
          RouteDiscussion.name,
          path: '/page-discussion',
        );

  static const String name = 'RouteDiscussion';
}

/// generated route for
/// [_i15.PageForceUpdate]
class RouteForceUpdate extends _i18.PageRouteInfo<void> {
  const RouteForceUpdate()
      : super(
          RouteForceUpdate.name,
          path: '/page-force-update',
        );

  static const String name = 'RouteForceUpdate';
}

/// generated route for
/// [_i16.PageMyAccount]
class RouteMyAccount extends _i18.PageRouteInfo<RouteMyAccountArgs> {
  RouteMyAccount({
    _i19.Key? key,
    required _i22.UserProfile userProfile,
  }) : super(
          RouteMyAccount.name,
          path: '/page-my-account',
          args: RouteMyAccountArgs(
            key: key,
            userProfile: userProfile,
          ),
        );

  static const String name = 'RouteMyAccount';
}

class RouteMyAccountArgs {
  const RouteMyAccountArgs({
    this.key,
    required this.userProfile,
  });

  final _i19.Key? key;

  final _i22.UserProfile userProfile;

  @override
  String toString() {
    return 'RouteMyAccountArgs{key: $key, userProfile: $userProfile}';
  }
}

/// generated route for
/// [_i17.PageCertificate]
class RouteCertificate extends _i18.PageRouteInfo<RouteCertificateArgs> {
  RouteCertificate({
    required String name,
    required DateTime date,
  }) : super(
          RouteCertificate.name,
          path: '/page-certificate',
          args: RouteCertificateArgs(
            name: name,
            date: date,
          ),
        );

  static const String name = 'RouteCertificate';
}

class RouteCertificateArgs {
  const RouteCertificateArgs({
    required this.name,
    required this.date,
  });

  final String name;

  final DateTime date;

  @override
  String toString() {
    return 'RouteCertificateArgs{name: $name, date: $date}';
  }
}
