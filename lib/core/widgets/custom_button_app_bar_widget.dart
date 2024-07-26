import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonAppBarWidget extends StatelessWidget {
  const CustomButtonAppBarWidget({
    super.key,
    required this.onTap,
    required this.title,
    this.fontSize = 8,
  });

  final String title;
  final Function()? onTap;
  final double fontSize;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0.sp),
      child: InkWell(
        onTap: onTap,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
class CustomButtonMobileAppBarWidget extends StatelessWidget {
  const CustomButtonMobileAppBarWidget({
    super.key,
    required this.onTap,
    required this.title,
    this.fontSize = 8,
  });

  final String title;
  final Function()? onTap;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0.sp),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          height: 25.h,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
