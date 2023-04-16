import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class CardPhoto extends StatefulWidget {
  final String? photoUrl;
  final String? cardTitle;
  final String? buttonTitle;
  final bool hasTitle;
  final double? imageWidth;
  final double? imageHeight;
  final double? buttonHeight;
  final double? buttonWidth;
  final Color? buttonColor;
  final BoxFit? imageFit;
  final BorderRadius? borderRadius;
  final EdgeInsets? margin;
  final Function()? onTap;
  const CardPhoto(
      {Key? key,
      this.photoUrl,
      this.cardTitle,
      this.buttonTitle,
      this.hasTitle = false,
      this.imageWidth,
      this.imageHeight,
      this.buttonHeight,
      this.buttonWidth,
      this.imageFit,
      this.borderRadius,
      this.margin,
      this.onTap,
      this.buttonColor})
      : super(key: key);

  @override
  State<CardPhoto> createState() => _CardPhotoState();
}

class _CardPhotoState extends State<CardPhoto> {
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return InkWell(
        onTap: widget.onTap ?? () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.hasTitle
                ? Container(
                    width: widget.buttonWidth ?? 140.w,
                    height: widget.buttonHeight ?? 18.h,
                    margin: widget.margin ?? EdgeInsets.only(bottom: 10.h),
                    child: Material(
                      color: widget.buttonColor ?? const Color(0xFFD9D9D9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Text(widget.buttonTitle ?? '',
                          textAlign: TextAlign.center,
                          style: TextStyles.headlineSmall.copyWith(
                              color: AppColors.darkGrey, fontSize: 14.sp)),
                    ),
                  )
                : const SizedBox.shrink(),
            ClipRRect(
                borderRadius: widget.borderRadius ?? BorderRadius.circular(2.r),
                child: CachedNetworkImage(
                    imageUrl: widget.photoUrl ?? '',
                    fit: widget.imageFit ?? BoxFit.cover,
                    height: widget.imageHeight ?? 140.h,
                    width: widget.imageWidth ?? 140.w,
                    alignment: Alignment.center,
                    progressIndicatorBuilder: (context, url, downloadProgress) {
                      if (downloadProgress.progress == 1.0) {
                        isLoading = false;
                      }
                      return Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: Container(
                          width: widget.imageWidth ?? 140.w,
                          height: widget.imageHeight ?? 140.h,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: widget.borderRadius ??
                                  BorderRadius.circular(2.r)),
                        ),
                      );
                    },
                    errorWidget: (context, url, error) {
                      return Container(
                        width: widget.imageWidth ?? 140.w,
                        height: widget.imageHeight ?? 140.h,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: widget.borderRadius ??
                                BorderRadius.circular(2.r)),
                        child: const Center(child: Icon(Icons.error)),
                      );
                    }))
          ],
        ),
      );
    });
  }
}
