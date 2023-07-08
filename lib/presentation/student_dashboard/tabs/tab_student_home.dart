import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/application/user_profile_bloc/user_profile_bloc.dart';
import 'package:sqlyze/domain/user/entities/user_profile.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/strings.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/errors/error_page.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:sqlyze/presentation/student_dashboard/components/greetings_section.dart';
import 'package:sqlyze/presentation/student_dashboard/components/shimmer_home.dart';
import 'package:sqlyze/presentation/student_dashboard/components/subject_section.dart';

class TabStudentHome extends StatefulWidget {
  const TabStudentHome({super.key});

  @override
  State<TabStudentHome> createState() => _TabStudentHomeState();
}

class _TabStudentHomeState extends State<TabStudentHome> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserProfileBloc>(
      create: (context) =>
          getIt<UserProfileBloc>()..add(const UserProfileEvent.getProfile()),
      child: BlocBuilder<UserProfileBloc, UserProfileState>(
        builder: (context, state) {
          return state.map(
              initial: (value) => const ShimmerHome(),
              loadInProgress: (value) => const ShimmerHome(),
              loadSuccess: (value) {
                return buildHome(value.user!);
              },
              loadFailure: (value) {
                return ErrorPage(message: value.message);
              });
        },
      ),
    );
  }

  Widget buildHome(UserProfile userProfile) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          colors: [
            AppColors.primary,
            AppColors.primary.withOpacity(.9),
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 50.h),
          // AppbarLogo(appBar: AppBar(), backgroundColor: Colors.transparent),
          Expanded(
              child: ListView(
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            children: [
              GreetingsSection(userProfile: userProfile),
              Stack(
                children: [
                  Container(
                    width: screenWidth,
                    height: screenHeight,
                    margin: EdgeInsets.only(top: 0.h),
                    padding: EdgeInsets.symmetric(horizontal: 0.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.r),
                          topRight: Radius.circular(25.r),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          AppBanners.bnrWelcome,
                          width: double.infinity,
                        ),
                        const SubjectSection()
                      ],
                    ),
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
