import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/application/user_profile_bloc/user_profile_bloc.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/student_dashboard/components/greetings_section.dart';
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
              initial: (value) => const SizedBox.shrink(),
              loadInProgress: (value) => const SizedBox.shrink(),
              loadSuccess: (value) {
                debugPrint('succcess  profile ${value.user}');
                return buildHome();
              },
              loadFailure: (value) {
                debugPrint('errro profile ${value.message}');
                return SizedBox();
              });
        },
      ),
    );
  }

  Widget buildHome() {
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
              const GreetingsSection(),
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
