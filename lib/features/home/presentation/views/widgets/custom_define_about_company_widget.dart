import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomDefineAboutCompanyWidget extends StatelessWidget {
  const CustomDefineAboutCompanyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center ,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Welcome To Petrolex Oil ',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.lightBrownColor,
                  ),
                ),
                Text(
                  'With offices in the UAE, Iraq, and Turkey.we keep growing through building a strong partnership with International leading services providers with allow us to offer turnkey services.WE focus on helping companies that specialize inthe OIL & GAS industry and that aim to expand into to middle EAST region, such as: \n\n. International Engineering Firms \n. OIL & GAS Exploration\n. Private Driller',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 30.w,),
          Container(
            height: 200.sp,
            width: 200.sp,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              image: const DecorationImage(
                image: AssetImage(
                  'assets/image/service1.jpg',

                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 30.w,),
        ],
      ),
    );
  }
}
