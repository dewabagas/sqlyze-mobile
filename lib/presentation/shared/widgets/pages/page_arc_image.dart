import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/shared/widgets/shapes/curved_top_clipper.dart';

class PageArcImage extends StatelessWidget {
  final Widget child;
  final bool? resizeToAvoidBottomInset;
  final List<Widget>? persistentFooterButtons;
  final Widget? bottomNavigationBar;
  PageArcImage(
      {super.key,
      required this.child,
      this.resizeToAvoidBottomInset,
      this.persistentFooterButtons,
      this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: Stack(
        children: [
          ClipPath(
              clipper: CurvedTopClipper(),
              child: Image.asset(
                AppImages.bgNight,
                fit: BoxFit.cover,
                // height: screenHeight / 2.3,
                height: 235.h,
              )),
          child
        ],
      ),
      persistentFooterButtons: persistentFooterButtons,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
