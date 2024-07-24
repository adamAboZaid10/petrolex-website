import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petrolex/core/widgets/custom_button_app_bar_widget.dart';
import 'package:petrolex/features/about_us/presentation/views/screens/base_about_us.dart';
import 'package:petrolex/features/contact_us/presentation/views/screens/base_contact_us.dart';
import 'package:petrolex/features/home/presentation/views/screens/base_home.dart';
import 'package:petrolex/features/products/presentation/view/screeens/base_products.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.black,
      height: 40.sp,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/image/company_logo.png',
              fit: BoxFit.contain,
              height: 60.sp,
              color: Colors.white,
              width: 60.sp,
            ),
            const Spacer(),
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
  const CustomAppBarMobile({
    super.key,
    required this.onTap,
  });

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 90.sp,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.all(8.0.sp),
              child: Image.asset(
                'assets/image/company_logo.png',
                fit: BoxFit.contain,
                color: Colors.white,
                height: 100.sp,
                width: 100.sp,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: onTap,
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 40.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomItemMobileAppBar extends StatelessWidget {
  const CustomItemMobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60,
      right: 10,
      child: Container(
        color: Colors.black,
        width: 200.sp,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.sp, vertical: 10.0.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.black,
                height: 60.sp,
                width: 200.sp,
                child: CustomButtonAppBarWidget(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BaseHome(),
                      ),
                    );
                  },
                  title: 'Home',
                  fontSize: 30,
                ),
              ),
              Container(
                color: Colors.black,
                height: 60.sp,
                width: 200.sp,
                child: CustomButtonAppBarWidget(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BaseProducts(),
                      ),
                    );
                  },
                  title: 'Products',
                  fontSize: 30,
                ),
              ),
              Container(
                color: Colors.black,
                height: 60.sp,
                width: 200.sp,
                child: CustomButtonAppBarWidget(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BaseAboutUsScreen(),
                      ),
                    );
                  },
                  title: 'About us',
                  fontSize: 30,
                ),
              ),

              Container(
                color: Colors.black,
                height: 60.sp,
                width: 200.sp,
                child: CustomButtonAppBarWidget(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BaseContactUsScreen(),
                      ),
                    );
                  },
                  title: 'Contact us',
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}