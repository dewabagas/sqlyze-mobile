import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;
  final TextStyle textStyle; // Add this line

  const Indicator({
    Key? key,
    required this.color,
    required this.text,
    required this.isSquare,
    required this.textStyle, // Add this line
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 16,
          height: 16,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        SizedBox(width: 4.w),
        Text(
          text,
          style: textStyle, // Use it here
        ),
      ],
    );
  }
}
