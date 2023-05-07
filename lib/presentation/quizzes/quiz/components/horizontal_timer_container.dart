import 'package:flutter/material.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class HorizontalTimerContainer extends StatelessWidget {
  final AnimationController timerAnimationController;

  HorizontalTimerContainer({Key? key, required this.timerAnimationController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Theme.of(context).canvasColor.withOpacity(0.5),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          alignment: Alignment.topRight,
          height: 10.0,
          width: MediaQuery.of(context).size.width * (0.85 - 0.1),
        ),
        AnimatedBuilder(
          animation: timerAnimationController,
          builder: (context, child) {
            return Container(
              decoration: BoxDecoration(
                  color: timerAnimationController.value >= 0.8
                      ? AppColors.red
                      : Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              alignment: Alignment.topRight,
              height: 10.0,
              width: MediaQuery.of(context).size.width *
                  (0.85 - 0.1) *
                  (1.0 - timerAnimationController.value),
            );
          },
        ),
      ],
    );
  }
}
