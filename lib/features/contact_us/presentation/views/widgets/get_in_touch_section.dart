import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:flutter_web/features/contact_us/presentation/views/widgets/contact_form.dart';
import 'package:flutter_web/features/contact_us/presentation/views/widgets/get_in_touch_section_title.dart';

class GetInTouchSection extends StatelessWidget {
  const GetInTouchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 900.w,
      decoration:const BoxDecoration(
        color: AppColors.darkGreenColor,
       
      ),
      child: Padding(
        padding: EdgeInsets.only(top:10.0.sp),
        child:  Column(
          children: [
            const GetInTouchSectionTitle(),
            SizedBox(height: 20.0.sp),
          const ContactUsForm()
          ],
        ),
      ));
  }
}

