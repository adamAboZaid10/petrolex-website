import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:flutter_web/features/home/presentation/views/widgets/custom_button_app_bar_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkGreenColor,
      height: 40.h,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                'Company Logo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CustomButtonAppBarWidget(
              onTap: () {},
              title: 'Home',
            ),
            CustomButtonAppBarWidget(
              onTap: () {},
              title: 'About us',
            ),
            CustomButtonAppBarWidget(
              onTap: () {},
              title: 'Products',
            ),
            CustomButtonAppBarWidget(
              onTap: () {},
              title: 'Contact us',
            ),
          ],
        ),
      ),
    );
  }
}
