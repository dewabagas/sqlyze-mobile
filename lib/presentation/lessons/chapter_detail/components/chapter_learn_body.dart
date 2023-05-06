import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/lessons/chapter_detail/components/podcast_player.dart';
import 'package:sqlyze/presentation/shared/widgets/cards/card_expansion.dart';
import 'package:sqlyze/presentation/shared/widgets/others/pdf_viewer.dart';

class ChapterLearnBody extends StatefulWidget {
  const ChapterLearnBody({super.key});

  @override
  State<ChapterLearnBody> createState() => _ChapterLearnBodyState();
}

class _ChapterLearnBodyState extends State<ChapterLearnBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Pengenalan Data Definition Language',
              style: TextStyles.labelMedium),
          SizedBox(height: 5.h),
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
            style: TextStyles.bodySmall.copyWith(
                color: AppColors.paragraphColor, fontWeight: FontWeight.w400),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 10.h),
          CardExpansion(
            title: 'Modul Materi',
            children: [
              Container(
                height: 500.h,
                child: PDFViewer(
                  url:
                      'https://drive.google.com/uc?id=1dQflASwaosA_R2oOfTvsimoB1Rxtvgra',
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          CardExpansion(
            title: 'PPT',
            children: [
              Container(
                height: 250.h,
                child: PDFViewer(
                  url:
                      'https://drive.google.com/uc?id=1NcV5Pq0wje6xTO1taiWTGjqIP-uMXGO6',
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          CardExpansion(title: 'Podcast', children: [
            Container(
                margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                child: PodcastPlayer(
                    title: 'Data Definition Language',
                    audioUrl:
                        'https://d3ctxlq1ktw2nl.cloudfront.net/staging/2023-4-1/326982564-22050-1-b3f2b4a2326c3.m4a'))
          ])
        ],
      ),
    );
  }
}
