import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:just_audio/just_audio.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_circle.dart';

class PodcastPlayer extends StatefulWidget {
  final String audioUrl;
  final String title;

  const PodcastPlayer({Key? key, required this.audioUrl, required this.title})
      : super(key: key);

  @override
  _PodcastPlayerState createState() => _PodcastPlayerState();
}

class _PodcastPlayerState extends State<PodcastPlayer> {
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _initAudioPlayer();
  }

  Future<void> _initAudioPlayer() async {
    try {
      await _audioPlayer.setUrl(widget.audioUrl);
    } catch (e) {
      // handle error
      print("Error: $e");
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 14.h),
      decoration: BoxDecoration(
        color: AppColors.navy,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          Container(
            height: 50.w,
            width: 50.w,
            padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.w),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: AppColors.blue, width: 3),
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 0),
                      blurRadius: 4,
                      spreadRadius: 0,
                      color: const Color(0xFF3A3A3A).withOpacity(0.25))
                ]),
            child: SvgPicture.asset(
              AppIcons.icPodcastTosca,
              height: 5.w,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 300.w,
                    child: Text(
                      widget.title,
                      style: TextStyles.labelMedium
                          .copyWith(color: AppColors.brokenWhite),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  StreamBuilder<Duration?>(
                    stream: _audioPlayer.durationStream,
                    builder: (context, snapshot) {
                      final duration = snapshot.data ?? Duration.zero;
                      return StreamBuilder<Duration?>(
                        stream: _audioPlayer.positionStream,
                        builder: (context, snapshot) {
                          var position = snapshot.data ?? Duration.zero;
                          if (position > duration) {
                            position = duration;
                          }
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (duration != Duration.zero)
                                SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    trackHeight: 2.0,
                                    activeTrackColor: AppColors.green,
                                    inactiveTickMarkColor: AppColors.white,
                                    activeTickMarkColor: AppColors.green,
                                    disabledActiveTickMarkColor:
                                        AppColors.white,
                                    disabledInactiveTickMarkColor:
                                        AppColors.white,
                                    thumbColor: AppColors.green,
                                    inactiveTrackColor: AppColors.white,
                                    thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 5.0,
                                      disabledThumbRadius: 5.0,
                                    ),
                                    overlayShape: RoundSliderOverlayShape(
                                        overlayRadius: 0.0),
                                  ),
                                  child: Slider(
                                    value: position.inMilliseconds.toDouble(),
                                    min: 0.0,
                                    max: duration.inMilliseconds.toDouble(),
                                    onChanged: (value) {
                                      _audioPlayer.seek(Duration(
                                          milliseconds: value.round()));
                                    },
                                  ),
                                ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          ButtonCircle(
            size: 50.w,
            child: Icon(_audioPlayer.playing ? Icons.pause : Icons.play_arrow,
                color: AppColors.green, size: 30.w),
            onTap: () {
              if (_audioPlayer.playing) {
                _audioPlayer.pause();
              } else {
                _audioPlayer.play();
              }
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
