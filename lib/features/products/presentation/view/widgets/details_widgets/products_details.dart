import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/utils/app_colors.dart';

class ProductsDetails extends StatelessWidget {
  const ProductsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.sp),
      child: Column(
        children: [
          Text(
            'Name Products',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.lightBrownColor,
            ),
          ),
          SizedBox(height: 20.h,),
          Text(
            'An excellent Quality of oil formulated with highly refined base stocks and advanced additive packages',
            style: TextStyle(
              fontSize: 11.sp,
              color: Colors.white,
            ),
          ),
         SizedBox(height: 20.h,),
         Container(
           padding: EdgeInsets.all(20.sp),
           height: 200.sp,
           decoration: BoxDecoration(
             color: AppColors.darkGreenColor,
             borderRadius: BorderRadius.circular(10.r),
             boxShadow: [
               BoxShadow(
                 color: Colors.grey.withOpacity(0.5),
                 spreadRadius: 5,
                 blurRadius: 7,
                 offset: const Offset(0, 3), // changes position of shadow
               ),
             ],

           ),
           child: Row(
             children: [
             Expanded(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     'SUMMARY OF BENEFITS',
                     style: TextStyle(
                       fontSize: 15.sp,
                       fontWeight: FontWeight.bold,
                       color: AppColors.lightBrownColor,
                     ),
                   ),
                   SizedBox(height: 30.h,),
                   Text(
                     'Super Protection against oxidation, foaming, high-temperature deposits, and bore . \nHigh effective control over soot, wear, rust corrosion. \nA high level of detergency and disperancy ensure a clean engine. \n  Good control of oil consumption',
                     style: TextStyle(
                       fontSize: 11.sp,
                       color: Colors.white,
                     ),
                   ),
                 ],
               ),
             ),
               SizedBox(width: 20.w,),
               SizedBox(
                 width: 200.sp,
                 height: 200.sp,
                 child: CachedNetworkImage(
                   imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/lionel-messi-celebrates-after-their-sides-third-goal-by-news-photo-1686170172.jpg?crop=0.66653xw:1xh;center,top&resize=640:*',
                   placeholder: (context, url) => const Center(
                     child: CircularProgressIndicator(),
                   ),
                   errorWidget: (context, url, error) => const Icon(Icons.error),
                 ),
               ),
             ],
           ),
         ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}