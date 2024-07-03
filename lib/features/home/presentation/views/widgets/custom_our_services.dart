import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/app_colors.dart';

class CustomOurServices extends StatelessWidget {
  const CustomOurServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.darkGreenColor,
          borderRadius: BorderRadius.circular(5.0.sp),
        ),
        child: Padding(
          padding:  EdgeInsets.all(20.sp),
          child: Column(
            children: [
              Text(
                'Our Services',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'A dynamic and growing company. BBV1 Oil Fields Services and relies on decades of experience from its Diverse and large workforce.BBV1 Oil Fields and services are Focused on serving on OIL & GAS industry by providing services such as: ',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
             const  Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomOurServicesItem(
                    imgPath: 'assets/image/service1.jpg',
                    title: 'Exploration & Drilling Support',
                  ), CustomOurServicesItem(
                    imgPath: 'assets/image/service2.jpg',
                    title: 'Fuel Products Trading',
                  ), CustomOurServicesItem(
                    imgPath: 'assets/image/service3.jpg',
                    title: 'Procurement Services',
                  ), CustomOurServicesItem(
                    imgPath: 'assets/image/service4.jpg',
                    title: 'Logistics',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomOurServicesItem extends StatelessWidget {
  const CustomOurServicesItem({
    super.key,
    required this.imgPath,
    required this.title,
  });

  final String imgPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100.sp,
          height: 100.sp,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
            image: DecorationImage(
              image: AssetImage(
                imgPath,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 10.h,),
        Text(
          title,
          style: TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
