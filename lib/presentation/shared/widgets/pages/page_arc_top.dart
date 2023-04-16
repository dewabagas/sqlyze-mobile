import 'package:flutter/material.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/shapes/curved_top_clipper.dart';

class PageArcTop extends StatelessWidget {
  final Widget child;
  final bool? resizeToAvoidBottomInset;
  final List<Widget>? persistentFooterButtons;
  PageArcTop(
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
            clipper: CurvedTopClipper(),
            child: Container(
              height: screenHeight / 2.8,
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
