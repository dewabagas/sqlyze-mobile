import 'package:flutter/material.dart';
import 'package:sqlyze/domain/core/constants/preference_constants.dart';
import 'package:sqlyze/domain/core/helpers/preference_helper.dart';
import 'package:sqlyze/presentation/student_dashboard/tabs/analytics_body.dart';

class TabStudentAnalytics extends StatefulWidget {
  const TabStudentAnalytics({super.key});

  @override
  State<TabStudentAnalytics> createState() => _TabStudentAnalyticsState();
}

class _TabStudentAnalyticsState extends State<TabStudentAnalytics> {
  int touchedIndex = -1;
  late int userId;

  @override
  void initState() {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      getUserId();
    });
    super.initState();
  }

  getUserId() async {
    int tempUserId =
        await getIntValuesPreference(key: PreferenceConstants.userId);
    setState(() {
      userId = tempUserId;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnalyticsBody(userId: userId);
  }
}
