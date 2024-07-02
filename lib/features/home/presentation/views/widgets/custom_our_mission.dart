import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomOurMission extends  StatelessWidget {
  const CustomOurMission({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.0.sp),
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
                  "assets/svg/our_mission.svg",
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  width: 30.sp,
                  height: 30.sp,
                  color: AppColors.blackColor,
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
              color: AppColors.blackColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),

        ],
      ),
    );
  }
}
