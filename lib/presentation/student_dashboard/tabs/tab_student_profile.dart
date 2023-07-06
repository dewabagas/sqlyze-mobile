import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/application/user_profile_bloc/user_profile_bloc.dart';
import 'package:sqlyze/domain/user/entities/user_profile.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/images/image_circle.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/draggable_page.dart';
import 'package:sqlyze/presentation/student_dashboard/components/card_profile_item.dart';

class TabStudentProfile extends StatefulWidget {
  const TabStudentProfile({super.key});

  @override
  State<TabStudentProfile> createState() => _TabProfileState();
}

class _TabProfileState extends State<TabStudentProfile> {
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
                log('cussess profile ${value.user}');
                return DraggablePage(
                    title: Text('${value.user?.fullName}',
                        style:
                            TextStyles.headlineSmall.copyWith(fontSize: 14.sp)),
                    headerExpandedHeight: 0.25,
                    appBarColor: AppColors.white,
                    backgroundColor: AppColors.white,
                    headerWidget: buildProfileHeader(value.user!),
                    body: [buildProfileBody(value.user!)]);
              },
              loadFailure: (value) {
                return SizedBox.shrink();
              });
        },
      ),
    );
  }

  Widget buildProfileHeader(UserProfile userProfile) {
    return Container(
      color: AppColors.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 43.h),
          Center(
            child: ImageCircle(
              width: 70.w,
              height: 70.w,
              image: '${userProfile.profileImageUrl}',
            ),
          ),
          SizedBox(height: 5.h),
          Text('${userProfile.fullName}',
              style:
                  TextStyles.titleSmall.copyWith(color: AppColors.brokenWhite)),
          SizedBox(height: 5.h),
          Text('${userProfile.msisdn}',
              style: TextStyles.bodyVerySmall.copyWith(
                  color: AppColors.brokenWhite, fontWeight: FontWeight.w300)),
          SizedBox(height: 5.h),
          Text('${userProfile.email}',
              style: TextStyles.bodyVerySmall.copyWith(
                  color: AppColors.brokenWhite, fontWeight: FontWeight.w300))
        ],
      ),
    );
  }

  Widget buildProfileBody(UserProfile userProfile) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.w, bottom: 10.h, top: 5.h),
            child: Text(
              'Account',
              style: TextStyles.labelMedium.copyWith(color: AppColors.primary),
            ),
          ),
          CardProfileItem(
            label: 'Akunku',
            hasDivider: true,
            icon: AppIcons.icMyAccount,
            onTap: () {
              // AutoRouter.of(context).push(const RouteMyAccount());
            },
          ),
          CardProfileItem(
            label: 'Help Center',
            hasDivider: true,
            icon: AppIcons.icHistory,
            onTap: () {
              // AutoRouter.of(context).push(const RouteConsultationHistory());
            },
          ),
          CardProfileItem(
            label: 'Pengaturan',
            hasDivider: true,
            icon: AppIcons.icSetting,
            onTap: () {
              // AutoRouter.of(context).push(const RouteProfileSetting());
            },
          ),
          CardProfileItem(
            label: 'Logout',
            hasDivider: false,
            icon: AppIcons.icLogout,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
