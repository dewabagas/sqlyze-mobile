import 'package:flutter/material.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/shapes/curved_bottom_clipper.dart';

class PageArcBottom extends StatelessWidget {
  final Widget child;
  final bool? resizeToAvoidBottomInset;
  final List<Widget>? persistentFooterButtons;
  PageArcBottom(
      {super.key,
      required this.child,
      this.resizeToAvoidBottomInset,
      this.persistentFooterButtons});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      body: Stack(
        children: [
          ClipPath(
            clipper: CurvedBottomClipper(),
            child: Container(
              height: screenHeight / 1.4,
              color: AppColors.primary,
            ),
          ),
          child
        ],
      ),
      persistentFooterButtons: this.persistentFooterButtons,
    );
  }
}
