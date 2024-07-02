import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsImageSection extends StatelessWidget {
  const AboutUsImageSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
          aspectRatio: 2.sp,
          child: Container(
    height: 40.h,
    decoration: BoxDecoration(
      color: AppColors.lightBrownColor,
      gradient: LinearGradient(
            colors: [
              AppColors.lightBrownColor,
              AppColors.darkGreenColor.withOpacity(0.1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
    ),
    child: Center(child: Text('About Us',
     style: TextStyle(
              fontSize: 40.sp,
              fontWeight: FontWeight.bold,
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
    ),),),),
    
    );
  }
}

// @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//           aspectRatio: 2.sp,
//           child: Container(
//     height: 40.h,
//     decoration: BoxDecoration(
//       color: AppColors.lightBrownColor,
//       gradient: LinearGradient(
//             colors: [
//               AppColors.lightBrownColor,
//               AppColors.darkGreenColor.withOpacity(0.1),
//             ],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//     ),
//     child: Center(child: Text('About Us',
//      style: GoogleFonts.aleo()
// ),),
    
//     ));
//   }
// }