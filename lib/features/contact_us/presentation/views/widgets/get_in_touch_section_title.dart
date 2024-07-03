import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/utils/app_colors.dart';

class GetInTouchSectionTitle extends StatelessWidget {
  const GetInTouchSectionTitle({
    super.key,
    this.fontTitleSize=18,
    this.fontSize=12
  });
  final double fontTitleSize ;
final double fontSize ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Get in touch Now!',
          style: TextStyle(
            color: AppColors.lightBrownColor,
            fontSize: fontTitleSize.sp,
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          'Use the form below to drop us an email. Or call our Team',
          style: TextStyle(
            fontSize: fontSize.sp,
            color: AppColors.lightBrownColor,
            fontFamily: 'PlaywrightItaliaModerna',
          ),
        )
      ],
    );
  }
}
