import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPrimary extends StatefulWidget {
  final double? height;
  final double? width;
  final EdgeInsets? padding;
  final BorderRadiusGeometry? borderRadius;
  final Widget? child;
  ShimmerPrimary(
      {Key? key,
      this.height,
      this.width,
      this.padding,
      this.borderRadius,
      this.child})
      : super(key: key);

  @override
  State<ShimmerPrimary> createState() => _ShimmerPrimaryState();
}

class _ShimmerPrimaryState extends State<ShimmerPrimary> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: widget.child ??
                Container(
                  width: widget.width ?? double.infinity,
                  height: widget.height ?? 49.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius:
                          widget.borderRadius ?? BorderRadius.circular(6.r)),
                ),
          ),
        ],
      ),
    );
  }
}
