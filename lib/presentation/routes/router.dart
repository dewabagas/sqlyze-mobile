import 'package:auto_route/annotations.dart';
import 'package:sqlyze/presentation/certificate/page_certificate.dart';
import 'package:sqlyze/presentation/core/pages/page_onboarding.dart';
import 'package:sqlyze/presentation/core/pages/page_splash.dart';
import 'package:sqlyze/presentation/discussions/page_discussion.dart';
import 'package:sqlyze/presentation/force_update/page_force_update.dart';
import 'package:sqlyze/presentation/guest_dashboard/page_guest_dashboard.dart';
import 'package:sqlyze/presentation/lessons/chapter_detail/page_chapter_detail.dart';
import 'package:sqlyze/presentation/lessons/lesson_detail/page_lesson_detail.dart';
import 'package:sqlyze/presentation/lessons/lesson_list/page_lesson_list.dart';
import 'package:sqlyze/presentation/lessons/lesson_step_detail/page_lesson_step_detail.dart';
import 'package:sqlyze/presentation/login/page_login.dart';
import 'package:sqlyze/presentation/my_account/page_my_account.dart';
import 'package:sqlyze/presentation/otp/page_otp.dart';
import 'package:sqlyze/presentation/quizzes/quiz/page_quiz.dart';
import 'package:sqlyze/presentation/quizzes/quiz_result/page_quiz_result.dart';
import 'package:sqlyze/presentation/register/page_register.dart';
import 'package:sqlyze/presentation/student_dashboard/page_student_dashboard.dart';

@MaterialAutoRouter(replaceInRouteName: "Page,Route", routes: <AutoRoute>[
  // CORE
  AutoRoute(page: PageSplash, initial: true),
  AutoRoute(page: PageOnboarding),

  // DASHBOARD
  AutoRoute(page: PageGuestDashboard),
  AutoRoute(page: PageStudentDashboard),

  // REGISTER
  AutoRoute(page: PageLogin),
  AutoRoute(page: PageRegister),
  AutoRoute(page: PageOtp),

  // LESSONS
  AutoRoute(page: PageLessonList),
  AutoRoute(page: PageLessonDetail),
  AutoRoute(page: PageChapterDetail),
  AutoRoute(page: PageLessonStepDetail),

  // QUIZZES
  AutoRoute(page: PageQuiz),
  AutoRoute(page: PageQuizResult),

  AutoRoute(page: PageDiscussion),

  AutoRoute(page: PageForceUpdate),
  AutoRoute(page: PageMyAccount),

  AutoRoute(page: PageCertificate),
])
class $AppRouter {}
