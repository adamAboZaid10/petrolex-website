import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomDefaultButton extends StatelessWidget {
  const CustomDefaultButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.width,
    required this.height,
    required this.backgroundColor,
    this.fontSize = 12,
  });

  final Function()? onTap;

  final String text;
  final double width;
  final double height;
  final Color backgroundColor;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width.sp,
        height: height.sp,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: fontSize.sp),
          ),
        ),
      ),
    );
  }
}
