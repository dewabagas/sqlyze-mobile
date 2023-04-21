import 'package:auto_route/annotations.dart';
import 'package:sqlyze/presentation/core/pages/page_onboarding.dart';
import 'package:sqlyze/presentation/core/pages/page_splash.dart';
import 'package:sqlyze/presentation/guest_dashboard/page_guest_dashboard.dart';
import 'package:sqlyze/presentation/otp/page_otp.dart';
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
])
class $AppRouter {}
