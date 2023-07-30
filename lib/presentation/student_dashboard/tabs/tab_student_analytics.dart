import 'package:flutter/material.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';
import 'package:sqlyze/domain/core/constants/preference_constants.dart';
import 'package:sqlyze/domain/core/helpers/preference_helper.dart';
import 'package:sqlyze/locator.dart';
import 'package:sqlyze/presentation/shared/widgets/errors/error_page.dart';
import 'package:sqlyze/presentation/student_dashboard/components/shimmer_analytics.dart';
import 'package:sqlyze/presentation/student_dashboard/tabs/analytics_body.dart';

class TabStudentAnalytics extends StatefulWidget {
  const TabStudentAnalytics({super.key});

  @override
  State<TabStudentAnalytics> createState() => _TabStudentAnalyticsState();
}

class _TabStudentAnalyticsState extends State<TabStudentAnalytics> {
  int touchedIndex = -1;
  late Future<int> userIdFuture;

  @override
  void initState() {
    final Mixpanel mixPanel = locator.get();
    mixPanel.track('Analytics');
    super.initState();
    userIdFuture = getUserId();
  }

  Future<int> getUserId() async {
    return await getIntValuesPreference(key: PreferenceConstants.userId);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<int>(
      future: userIdFuture,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const ShimmerAnalytics();
        } else if (snapshot.hasError) {
          return ErrorPage(
            message: 'Error: ${snapshot.error}',
          ); // Handle error
        } else {
          return AnalyticsBody(userId: snapshot.data!); // Render main UI
        }
      },
    );
  }
}
