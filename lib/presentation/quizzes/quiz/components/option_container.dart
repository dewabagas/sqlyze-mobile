import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
// Import package

class OptionContainer extends StatefulWidget {
  final Function hasSubmittedAnswerForCurrentQuestion;
  final Function submitAnswer;
  final String answerOption;
  final BoxConstraints constraints;
  final bool correctOptionId;
  final String submittedAnswerId;
  final bool showAnswerCorrectness;
  OptionContainer({
    Key? key,
    required this.showAnswerCorrectness,
    required this.hasSubmittedAnswerForCurrentQuestion,
    required this.constraints,
    required this.answerOption,
    required this.correctOptionId,
    required this.submitAnswer,
    required this.submittedAnswerId,
  }) : super(key: key);

  @override
  _OptionContainerState createState() => _OptionContainerState();
}

class _OptionContainerState extends State<OptionContainer>
    with TickerProviderStateMixin {
  late AnimationController animationController =
      AnimationController(vsync: this, duration: Duration(milliseconds: 90));
  late Animation<double> animation = Tween<double>(begin: 0.0, end: 1.0)
      .animate(CurvedAnimation(
          parent: animationController, curve: Curves.easeInQuad));

  late AnimationController topContainerAnimationController =
      AnimationController(vsync: this, duration: Duration(milliseconds: 180));
  late Animation<double> topContainerOpacityAnimation =
      Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
    parent: topContainerAnimationController,
    curve: Interval(0.0, 0.25, curve: Curves.easeInQuad),
  ));

  late Animation<double> topContainerAnimation =
      Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
          parent: topContainerAnimationController,
          curve: Interval(0.0, 0.5, curve: Curves.easeInQuad)));

  late Animation<double> answerCorrectnessAnimation =
      Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
          parent: topContainerAnimationController,
          curve: Interval(0.5, 1.0, curve: Curves.easeInQuad)));

  late double heightPercentage = 0.105;
  late AssetsAudioPlayer assetsAudioPlayer = AssetsAudioPlayer();

  late TextSpan textSpan =
      TextSpan(text: widget.answerOption, style: TextStyles.labelSmall);

  @override
  void dispose() {
    animationController.dispose();
    topContainerAnimationController.dispose();
    assetsAudioPlayer.dispose();
    super.dispose();
  }

  void playSound(String trackName) async {
    if (assetsAudioPlayer.isPlaying.value) {
      await assetsAudioPlayer.stop();
    }
    await assetsAudioPlayer.open(Audio("$trackName"));
    await assetsAudioPlayer.play();
  }

  int calculateMaxLines() {
    TextPainter textPainter =
        TextPainter(text: textSpan, textDirection: Directionality.of(context));

    textPainter.layout(
      maxWidth: widget.constraints.maxWidth * (0.85),
    );

    return textPainter.computeLineMetrics().length;
  }

  Color _buildOptionBackgroundColor() {
    if (widget.showAnswerCorrectness) {
      return AppColors.pink;
    }
    if (widget.hasSubmittedAnswerForCurrentQuestion() &&
        widget.submittedAnswerId == widget.answerOption) {
      print("Submitted answer id is : ${widget.submittedAnswerId}");
      print("Stop here");
      return AppColors.softGreen;
    }
    return AppColors.pink;
  }

  void _onTapOptionContainer() {
    if (widget.showAnswerCorrectness) {
      if (!widget.hasSubmittedAnswerForCurrentQuestion()) {
        widget.submitAnswer(widget.answerOption, widget.correctOptionId);
        topContainerAnimationController.forward();
        if (widget.correctOptionId) {
          playSound(AppSounds.right);
        } else {
          playSound(AppSounds.wrong);
        }
      }
    } else {
      widget.submitAnswer(widget.answerOption, widget.correctOptionId);
      playSound(AppSounds.click);
    }
  }

  Widget _buildOptionDetails(double optionWidth) {
    int maxLines = calculateMaxLines();
    if (!widget.hasSubmittedAnswerForCurrentQuestion()) {
      heightPercentage = maxLines > 2
          ? (heightPercentage + (0.03 * (maxLines - 2)))
          : heightPercentage;
    }

    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Transform.scale(
          scale: animation.drive(Tween<double>(begin: 1.0, end: 0.9)).value,
          child: child,
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: widget.constraints.maxHeight * (0.02)),
        height: widget.constraints.maxHeight * heightPercentage / 1.4,
        width: optionWidth,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 16.w, vertical: maxLines > 2 ? 7.50.h : 0),
                color: _buildOptionBackgroundColor(),
                alignment: AlignmentDirectional.centerStart,
                child: Text(widget.answerOption,
                    style: TextStyles.labelMedium
                        .copyWith(color: AppColors.white)),
              ),
              widget.showAnswerCorrectness
                  ? IgnorePointer(
                      ignoring: true,
                      child: AnimatedBuilder(
                        builder: (context, child) {
                          final height = topContainerAnimation
                              .drive(Tween<double>(
                                  begin: 0.085, end: heightPercentage))
                              .value;
                          final width = topContainerAnimation
                              .drive(Tween<double>(begin: 0.2, end: 1.0))
                              .value;

                          final borderRadius = topContainerAnimation
                              .drive(Tween<double>(begin: 40.0, end: 20))
                              .value;
                          return Opacity(
                            opacity: topContainerOpacityAnimation.value,
                            child: Container(
                              alignment: Alignment.center,
                              child: Transform.scale(
                                scale: answerCorrectnessAnimation.value,
                                child: Opacity(
                                  opacity: answerCorrectnessAnimation.value,
                                  child: widget.answerOption ==
                                          widget.correctOptionId
                                      ? Icon(Icons.check,
                                          color: AppColors.primary)
                                      : Icon(Icons.close,
                                          color: AppColors.primary),
                                ),
                              ),
                              decoration: BoxDecoration(
                                  color: AppColors.softGreen,
                                  borderRadius:
                                      BorderRadius.circular(borderRadius)),
                              width: optionWidth * width,
                              height: widget.constraints.maxHeight * height,
                            ),
                          );
                        },
                        animation: topContainerAnimationController,
                      ),
                    )
                  : Container()
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    textSpan = TextSpan(
        text: widget.answerOption,
        style: TextStyle(
            color: Theme.of(context).backgroundColor,
            height: 1.0,
            fontSize: 16.0));
    return GestureDetector(
      onTapCancel: () {
        animationController.reverse();
      },
      onTap: () async {
        animationController.reverse();
        _onTapOptionContainer();
      },
      onTapDown: (_) {
        //
        animationController.forward();
      },
      child: _buildOptionDetails(widget.constraints.maxWidth),
    );
  }
}
