import 'package:auto_route/annotations.dart';
import 'package:sqlyze/presentation/core/pages/page_onboarding.dart';
import 'package:sqlyze/presentation/core/pages/page_splash.dart';
import 'package:sqlyze/presentation/guest_dashboard/page_guest_dashboard.dart';
import 'package:sqlyze/presentation/lessons/chapter_detail/page_chapter_detail.dart';
import 'package:sqlyze/presentation/lessons/lesson_detail/page_lesson_detail.dart';
import 'package:sqlyze/presentation/lessons/lesson_list/page_lesson_list.dart';
import 'package:sqlyze/presentation/lessons/lesson_step_detail/page_lesson_step_detail.dart';
import 'package:sqlyze/presentation/otp/page_otp.dart';
import 'package:sqlyze/presentation/quizzes/quiz/page_quiz.dart';
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
  AutoRoute(page: PageRegister),
  AutoRoute(page: PageOtp),

  // LESSONS
  AutoRoute(page: PageLessonList),
  AutoRoute(page: PageLessonDetail),
  AutoRoute(page: PageChapterDetail),
  AutoRoute(page: PageLessonStepDetail),

  // QUIZZES
  AutoRoute(page: PageQuiz),
])
class $AppRouter {}
