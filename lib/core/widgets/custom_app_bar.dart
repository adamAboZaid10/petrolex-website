import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:flutter_web/core/widgets/custom_button_app_bar_widget.dart';
import 'package:flutter_web/features/about_us/presentation/views/screens/base_about_us.dart';
import 'package:flutter_web/features/contact_us/presentation/views/screens/base_contact_us.dart';
import 'package:flutter_web/features/home/presentation/views/screens/base_home.dart';
import 'package:flutter_web/features/products/presentation/view/screeens/base_products.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkGreenColor,
      height: 40.sp,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                'Petrolex Oil',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CustomButtonAppBarWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BaseHome(),
                  ),
                );
              },
              title: 'Home',
            ),
            CustomButtonAppBarWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BaseAboutUsScreen(),
                  ),
                );
              },
              title: 'About us',
            ),
            CustomButtonAppBarWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BaseProducts(),
                  ),
                );
              },
              title: 'Products',
            ),
            CustomButtonAppBarWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BaseContactUsScreen(),
                  ),
                );
              },
              title: 'Contact us',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBarMobile extends StatelessWidget {
  const CustomAppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkGreenColor,
      height: 150.sp,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                'Petrolex Oil',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            CustomButtonAppBarWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BaseHome(),
                  ),
                );
              },
              title: 'Home',
              fontSize: 20,
            ),
            CustomButtonAppBarWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BaseAboutUsScreen(),
                  ),
                );
              },
              title: 'About us',
              fontSize: 20,
            ),
            CustomButtonAppBarWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BaseProducts(),
                  ),
                );
              },
              title: 'Products',
              fontSize: 20,
            ),
            CustomButtonAppBarWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BaseContactUsScreen(),
                  ),
                );
              },
              title: 'Contact us',
              fontSize: 20,
            ),
          ],
        ),
      ),
    );
  }
}
