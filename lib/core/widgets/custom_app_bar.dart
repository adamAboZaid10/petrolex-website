import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:flutter_web/core/widgets/custom_button_app_bar_widget.dart';
import 'package:flutter_web/features/contact_us/presentation/views/screens/contact_us_screen.dart';
import 'package:flutter_web/features/products/presentation/view/screeens/products_screen.dart';

import '../../features/about_us/presentation/views/screens/about_us.dart';
import '../Routing/app_routes.dart';

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
                Navigator.pushNamed(
                  context,
                  AppRoutes.home,
                );
              },
              title: 'Home',
            ),
            CustomButtonAppBarWidget(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.aboutUs,
                );
              },
              title: 'About us',
            ),
            CustomButtonAppBarWidget(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.products,
                );
              },
              title: 'Products',
            ),
            CustomButtonAppBarWidget(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  AppRoutes.contactUs,
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

              },
              title: 'Home',
              fontSize: 20,
            ),
            CustomButtonAppBarWidget(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUsScreen(),
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
                    builder: (context) => ProductsScreen(),
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
                    builder: (context) => ContactUsScreen(),
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
