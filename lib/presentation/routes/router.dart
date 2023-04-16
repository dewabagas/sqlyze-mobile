import 'package:auto_route/annotations.dart';
import 'package:sqlyze/presentation/core/pages/page_onboarding.dart';
import 'package:sqlyze/presentation/core/pages/page_splash.dart';
import 'package:sqlyze/presentation/guest_dashboard/page_guest_dashboard.dart';
import 'package:sqlyze/presentation/register/page_register.dart';

@MaterialAutoRouter(replaceInRouteName: "Page,Route", routes: <AutoRoute>[
  // CORE
  AutoRoute(page: PageSplash, initial: true),
  AutoRoute(page: PageOnboarding),
  
  // DASHBOARD
  AutoRoute(page: PageGuestDashboard),

  // REGISTER
  AutoRoute(page: PageRegister),

])
class $AppRouter {}
