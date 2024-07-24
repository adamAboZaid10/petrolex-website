import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petrolex/core/utils/app_colors.dart';
import 'package:petrolex/features/contact_us/presentation/views/widgets/contact_form.dart';
import 'package:petrolex/features/contact_us/presentation/views/widgets/get_in_touch_section_title.dart';

class GetInTouchSection extends StatelessWidget {
  const GetInTouchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 900.w,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 10.0.sp),
        child: Column(
          children: [
            const GetInTouchSectionTitle(),
            SizedBox(height: 20.0.sp),
            ContactUsForm(),
          ],
        ),
      ),
    );
  }
}

class GetInTouchMobileSection extends StatelessWidget {
  const GetInTouchMobileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 10.0.sp),
        child: Column(
          children: [
            const GetInTouchSectionTitle(
              fontTitleSize: 40,
              fontSize: 20,
            ),
            SizedBox(height: 10.0.h),
            ContactUsMobileForm(),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}
