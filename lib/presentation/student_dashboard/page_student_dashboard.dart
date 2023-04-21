import 'package:flutter/material.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/guest_dashboard/tabs/tab_guest_home.dart';
import 'package:sqlyze/presentation/guest_dashboard/tabs/tab_guest_login.dart';
import 'package:sqlyze/presentation/shared/widgets/others/icon_bottom_nav_bar_student.dart';
import 'package:sqlyze/presentation/student_dashboard/tabs/tab_student_courses.dart';
import 'package:sqlyze/presentation/student_dashboard/tabs/tab_student_home.dart';
import 'package:sqlyze/presentation/student_dashboard/tabs/tab_student_playground.dart';
import 'package:sqlyze/presentation/student_dashboard/tabs/tab_student_profile.dart';

class PageStudentDashboard extends StatefulWidget {
  const PageStudentDashboard({super.key});

  @override
  State<PageStudentDashboard> createState() => _PageStudentDashboardState();
}

class _PageStudentDashboardState extends State<PageStudentDashboard> {
  int _currentIndex = 0;

  final List<IconBottomNavBarItem> items = [
    IconBottomNavBarItem(
        iconActive: BottomBar.icDashboardActive,
        iconInactive: BottomBar.icDashboard,
        label: 'Home'),
    IconBottomNavBarItem(
        iconActive: BottomBar.icCourseActive,
        iconInactive: BottomBar.icCourse,
        label: 'My Courses'),
    IconBottomNavBarItem(
        iconActive: BottomBar.icSqlActive,
        iconInactive: BottomBar.icSql,
        label: 'Playground'),
    IconBottomNavBarItem(
        iconActive: BottomBar.icProfileActive,
        iconInactive: BottomBar.icProfile,
        label: 'Profile'),
  ];

  static final List widgetOptions = [
    const TabStudentHome(),
    const TabStudentCourses(),
    const TabStudentPlayground(),
    const TabStudentProfile(),
  ];

  void _onItemTapped(int? index) {
    setState(() {
      _currentIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widgetOptions.elementAt(_currentIndex),
        // backgroundColor: Colors.transparent,
        bottomNavigationBar: IconBottomNavBarStudent(
          backgroundColor: AppColors.white,
          notchedShape: const CircularNotchedRectangle(),
          onTabSelected: _onItemTapped,
          initialPage: _currentIndex,
          items: items,
        ));
  }
}
