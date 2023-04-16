import 'package:flutter/material.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/guest_dashboard/tabs/tab_guest_home.dart';
import 'package:sqlyze/presentation/guest_dashboard/tabs/tab_guest_login.dart';
import 'package:sqlyze/presentation/shared/widgets/others/icon_bottom_nav_bar.dart';

class PageGuestDashboard extends StatefulWidget {
  const PageGuestDashboard({super.key});

  @override
  State<PageGuestDashboard> createState() => _PageGuestDashboardState();
}

class _PageGuestDashboardState extends State<PageGuestDashboard> {
  int _currentIndex = 0;

  final List<IconBottomNavBarItem> items = [
    IconBottomNavBarItem(
        iconActive: BottomBar.icDashboardActive,
        iconInactive: BottomBar.icDashboard,
        label: 'Home'),
    IconBottomNavBarItem(
        iconActive: BottomBar.icProfileActive,
        iconInactive: BottomBar.icProfile,
        label: 'Profile'),
  ];

  static final List widgetOptions = [
    const TabGuestHome(),
    const TabGuestLogin()
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
        bottomNavigationBar: IconBottomAppNavBar(
          backgroundColor: AppColors.white,
          notchedShape: const CircularNotchedRectangle(),
          onTabSelected: _onItemTapped,
          initialPage: _currentIndex,
          items: items,
        ));
  }
}
