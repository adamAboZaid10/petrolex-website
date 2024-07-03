import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/utils/app_colors.dart';


class AboutUsDetails extends StatelessWidget {
  const AboutUsDetails({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(12.0.sp),
      child: Container(
          height: 400.sp,
          width: 900.sp,
          decoration: BoxDecoration(
            color: AppColors.lightBrownColor,
            borderRadius: BorderRadius.all(Radius.circular(10.0.r)),
          ),
          
           child: Padding(
             padding:  EdgeInsets.all(8.0.sp),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('VALUES', style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  letterSpacing: 1.2,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black.withOpacity(0.5),
                      offset:const Offset(2.0, 2.0),
                    ),
                  ],
                  fontFamily:'PlaywrightItaliaModerna' , // Use a font that looks elegant
                   ),)),
                SizedBox(height: 16.h,),
                 Center(
                  child: Text('Our Values define the relationship we aim to have with our partners and clients as well as our focus on the human development of our teams',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  letterSpacing: 1.2,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black.withOpacity(0.5),
                      offset:const Offset(2.0, 2.0),
                    ),
                  ],
                  fontFamily:'PlaywrightItaliaModerna' , // Use a font that looks elegant
                   ),)),
                SizedBox(height: 24.h,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  AboutUsDetailsItemWidget( title: 'Excellence',),
                  AboutUsDetailsItemWidget( title: 'Quality',),
                  AboutUsDetailsItemWidget( title: 'Loyalty',),
                  AboutUsDetailsItemWidget( title: 'Collaboration',),
                  
                   
                ],),
                SizedBox(height: 12.h,),
                const Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   
                  children: [
                  AboutUsDetailsItemWidget( title: 'Reliability',),
                  AboutUsDetailsItemWidget( title: 'Commitment',),
                  AboutUsDetailsItemWidget( title: 'Safety',),
                  AboutUsDetailsItemWidget( title: 'Integrity',),
                  
                   
                ],),
                            SizedBox(height: 12.h,),
                   
                   
                Center(
                  child: Text('We source our additive Packages from Lubrizol, Afton, Infineum, BASF AG, Innospec, Eurenco, and EPC-UK to name a few',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  letterSpacing: 1.2,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black.withOpacity(0.5),
                      offset:const Offset(2.0, 2.0),
                    ),
                  ],
                  fontFamily:'PlaywrightItaliaModerna' , // Use a font that looks elegant
                   ),)),
                   
                   
              ],
                       ),
           )
      
        
      ),
    );
  }
}   

class AboutUsDetailsItemWidget extends StatelessWidget {
  const AboutUsDetailsItemWidget({super.key, required this.title});
 final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 90.w,
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
      borderRadius: BorderRadius.circular(6.0.r)
    )
    ,child: Center(child: Text(title,
     style: TextStyle(
      fontSize: 14.sp
     )),));
  }
}