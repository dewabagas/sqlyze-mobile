import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/application/greetings_bloc/greetings_bloc.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/shared/widgets/errors/error_page.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class TabGuestHome extends StatefulWidget {
  const TabGuestHome({Key? key}) : super(key: key);

  @override
  _TabGuestHomeState createState() => _TabGuestHomeState();
}

class _TabGuestHomeState extends State<TabGuestHome> {
  int _current = 0;
  final List<String> introductionBanners = [
    AppBanners.bnrIntro,
    AppBanners.bnrIntro2,
  ];

  final List<String> coloredBanners = [
    AppBanners.bnrIntro,
    AppBanners.bnrIntro2,
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = introductionBanners
        .map((item) => Container(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Image.asset(
                  item,
                ),
              ),
            ))
        .toList();

    return BlocProvider<GreetingsBloc>(
      create: (context) =>
          getIt<GreetingsBloc>()..add(const GreetingsEvent.show()),
      child: BlocBuilder<GreetingsBloc, GreetingsState>(
        builder: (context, state) {
          return state.map(
              initial: (value) => const SizedBox(),
              loadInProgress: (value) => const SizedBox(),
              loadSuccess: (value) {
                return PageDecorationTop(
                  appBarTitle: 'Selamat ${value.greetings}',
                  hasBack: false,
                  child: Column(
                    children: [
                      SizedBox(height: 16.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: Image.asset(AppBanners.bnrIntro)),
                      ),
                    ],
                  ),
                );
              },
              loadFailure: (value) {
                return ErrorPage(message: value.greetings);
              });
        },
      ),
    );
  }
}
