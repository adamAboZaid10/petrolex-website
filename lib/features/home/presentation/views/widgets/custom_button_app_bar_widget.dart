import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonAppBarWidget extends StatelessWidget {
  const CustomButtonAppBarWidget({
    super.key,
    required this.onTap,
    required this.title,
  });

  final String title;
  final Function()? onTap;

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
            fontSize: 8.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
