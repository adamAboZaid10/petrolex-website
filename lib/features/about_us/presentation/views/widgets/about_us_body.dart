import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:flutter_web/features/about_us/presentation/views/widgets/about_us_details.dart';
import 'package:flutter_web/features/about_us/presentation/views/widgets/about_us_image_section.dart';

class AboutUsBody extends StatelessWidget {
  const AboutUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
         AboutUsImageSection(),
         Stack(
          children: [
            Container(
              height: 280.h,
          width: 900.w,
              decoration: BoxDecoration(
                color :AppColors.darkGreenColor
              ),
            ),
            const AboutUsDetails(),
          ],
         )
         
    
      ],
    );
  }
}

