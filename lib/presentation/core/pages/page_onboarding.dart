import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sqlyze/domain/onboarding/model/introduction.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';
import 'package:sqlyze/presentation/shared/widgets/appbars/appbar_label.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_arc_bottom.dart';

class PageOnboarding extends StatefulWidget {
  const PageOnboarding({super.key});

  @override
  State<PageOnboarding> createState() => _PageOnboardingState();
}

class _PageOnboardingState extends State<PageOnboarding>
    with SingleTickerProviderStateMixin {
  List<Introduction> listOnBoarding = [];
  int currentIndex = 0;
  CarouselController buttonCarouselController = CarouselController();
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    setupOnboarding();
    initializeAnimation();
    FlutterNativeSplash.remove();
  }

  initializeAnimation() {
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation =
        Tween<double>(begin: -10, end: 10).animate(_animationController);
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: screenHeight,
            color: AppColors.white,
            child: Padding(
              padding: EdgeInsets.only(bottom: 270.h),
              child: CarouselSlider(
                items: listOnBoarding.map((onBoarding) {
                  return AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, child) {
                      return Transform.translate(
                        offset: Offset(0, _animation.value),
                        child: child,
                      );
                    },
                    child: SvgPicture.asset(onBoarding.image ?? '',
                        fit: BoxFit.contain),
                  );
                }).toList(),
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  height: 400.h,
                  autoPlay: false,
                  viewportFraction: 1,
                  reverse: false,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  onPageChanged: (paramIndex, reason) {
                    setState(() {
                      currentIndex = paramIndex;
                    });
                    log(currentIndex.toString() + reason.name);
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: screenHeight / 2.4,
              width: screenWidth / 1.06,
              margin: EdgeInsets.only(bottom: 20.h),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(30.r)),
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: listOnBoarding.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => buttonCarouselController
                                .animateToPage(entry.key),
                            child: currentIndex == entry.key
                                ? Container(
                                    width: 43.w,
                                    height: 7.w,
                                    margin: EdgeInsets.only(right: 3.w),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100.r),
                                        color: AppColors.primary),
                                  )
                                : Container(
                                    width: 7.w,
                                    height: 7.w,
                                    margin: EdgeInsets.only(right: 3.w),
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.primary),
                                  ),
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 20.h),
                      SizedBox(
                        width: screenWidth / 1.2,
                        child: Text(
                          listOnBoarding[currentIndex].title ?? '',
                          textAlign: TextAlign.center,
                          style: TextStyles.titleMedium
                              .copyWith(color: AppColors.charcoal),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      SizedBox(
                        width: screenWidth / 1.2,
                        child: Text(listOnBoarding[currentIndex].desc ?? '',
                            style: TextStyles.bodyMedium.copyWith(
                                color: AppColors.paragraphColor,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: ButtonGradient(
                          suffixIcon: SvgPicture.asset(AppIcons.icArrowRight),
                          title: '',
                          margin: EdgeInsets.symmetric(horizontal: 18.w),
                          width: double.infinity,
                          borderRadius: BorderRadius.circular(100.r),
                          onPressed: () {
                            // AutoRouter.of(context)
                            //     .push(const RouteGuestDashboard());
                            AutoRouter.of(context)
                                .push(const RouteChapterDetail());
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  setupOnboarding() {
    listOnBoarding.add(Introduction(
        id: '0',
        image: AppIllustrations.illLearning1,
        title: 'Akses Mudah, Fleksibel, dan Efisien',
        desc:
            'Asah keterampilan database Anda melalui aplikasi e-learning yang menawarkan materi pelajaran, latihan, dan ujian secara interaktif.'));
    listOnBoarding.add(Introduction(
        id: '1',
        image: AppIllustrations.illLearning2,
        title: 'Belajar Database, Tingkatkan Kemampuan',
        desc:
            'Kuasai keterampilan manajemen database dan jadilah siswa SMK yang handal di bidang teknologi informasi.'));
    listOnBoarding.add(Introduction(
        id: '2',
        image: AppIllustrations.illLearning3,
        title: 'E-Learning Terstruktur, Pencapaian Optimal',
        desc:
            'Nikmati metode belajar yang terstruktur dan terarah, khusus dirancang untuk membantu siswa SMK menguasai ilmu database.'));
  }
}
