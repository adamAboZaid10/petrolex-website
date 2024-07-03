import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/utils/app_colors.dart';

class AskAQuestionWidget extends StatelessWidget {
  const AskAQuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.sp,
      width: double.infinity,
      decoration: const BoxDecoration(color: AppColors.backgroundColor),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 8.0.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Ask a question -- we\'re all ears!',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  letterSpacing: 1.2,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black.withOpacity(0.5),
                      offset: const Offset(2.0, 2.0),
                    ),
                  ],
                  fontFamily:
                      'PlaywrightItaliaModerna', // Use a font that looks elegant
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AskAQuestionMobileWidget extends StatelessWidget {
  const AskAQuestionMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(color: AppColors.backgroundColor),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 30.0.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Ask a question -- we\'re all ears!',
                style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  letterSpacing: 1.2,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black.withOpacity(0.5),
                      offset: const Offset(2.0, 2.0),
                    ),
                  ],
                  fontFamily:
                      'PlaywrightItaliaModerna', // Use a font that looks elegant
                ),
              ),
              SizedBox(height: 20.h,),
            ],
          ),
        ),
      ),
    );
  }
}
