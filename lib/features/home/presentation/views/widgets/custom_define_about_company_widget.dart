import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomDefineAboutCompanyWidget extends StatelessWidget {
  const CustomDefineAboutCompanyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Stack(
        children: [

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0.sp),
              color: AppColors.darkGreenColor.withOpacity(0.5),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'With offices in the UAE, Iraq, and Turkey.we keep growing through building a strong partnership with International leading services providers with allow us to offer turnkey services.WE focus on helping companies that specialize inthe OIL & GAS industry and that aim to expand into to middle EAST region, such as: \n\n. International Engineering Firms \n. OIL & GAS Exploration\n. Private Driller',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Container(
                    height: 200.sp,
                    width: 200.sp,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Lottie.asset(
                      'assets/lotttie/info.json',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDefineAboutCompanyMobileWidget extends StatelessWidget {
  const CustomDefineAboutCompanyMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0.w),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.darkGreenColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(5.0.sp),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0.sp, horizontal: 20.0.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome To Petrolex Oil ',
                          style: TextStyle(
                            fontSize: 50.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10.h,),
                        Text(
                          'With offices in the UAE, Iraq, and Turkey.we keep growing through building a strong partnership with International leading services providers with allow us to offer turnkey services.',
                          style: TextStyle(
                            fontSize: 35.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    height: 200.sp,
                    width: 200.sp,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: IgnorePointer(
                      child: Lottie.asset(
                        'assets/lotttie/info.json',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                ],
              ),
              Text(
                'WE focus on helping companies that specialize inthe OIL & GAS industry and that aim to expand into to middle EAST region, such as: \n. International Engineering Firms \n. OIL & GAS Exploration\n. Private Driller.',
                style: TextStyle(
                  fontSize: 35.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
