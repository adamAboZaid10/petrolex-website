import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomOurMission extends StatelessWidget {
  const CustomOurMission({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0.sp),
          color: AppColors.darkGreenColor.withOpacity(0.5),
        ),
        child: Padding(
          padding: EdgeInsets.all( 20.0.sp),
          child: Column(
            children: [
              Container(
                width: 50.sp,
                height: 50.sp,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/rocket.svg",
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      width: 30.sp,
                      height: 30.sp,
                      ///ToDo change change
                      // colorFilter:  const ColorFilter.mode(
                      //   AppColors.backgroundColor,
                      //   BlendMode.srcOver,
                      // ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Our Mission',
                style: TextStyle(
                  color: AppColors.lightBrownColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'To create, strengthen, and Expand our reach and our services by growing our network of partners with International Leading services Provider and reaching new and bigger markets regionally in the MENA region and Beyond.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomOurMissionMobile extends StatelessWidget {
  const CustomOurMissionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0.sp),
          color: AppColors.darkGreenColor.withOpacity(0.5),
        ),
        child: Padding(
          padding: EdgeInsets.all( 20.0.sp),
          child: Column(
            children: [
              Container(
                width: 100.sp,
                height: 100.sp,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/svg/rocket.svg",
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      width: 60.sp,
                      height: 60.sp,
                      ///ToDo change change
                      // colorFilter:  const ColorFilter.mode(
                      //   AppColors.backgroundColor,
                      //   BlendMode.srcOver,
                      // ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Our Mission',
                style: TextStyle(
                  color: AppColors.lightBrownColor,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'To create, strengthen, and Expand our reach and our services by growing our network of partners with International Leading services Provider and reaching new and bigger markets regionally in the MENA region and Beyond.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
