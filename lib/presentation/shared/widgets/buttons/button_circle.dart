import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class ButtonCircle extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function()? onTap;
  final double? size;

  const ButtonCircle(
      {super.key,
      this.color = AppColors.white,
      required this.child,
      this.onTap,
      this.size});
  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: color, // Warna background dari ButtonCircle
        child: InkWell(
          splashColor: Colors.grey, // Warna efek splash saat ditekan
          onTap: onTap,
          child: SizedBox(
            width: size ?? 50.w, // Lebar ButtonCircle
            height: size ?? 50.w, // Tinggi ButtonCircle
            child: child,
          ),
        ),
      ),
    );
  }
}
