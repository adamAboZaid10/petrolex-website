import 'package:flutter/material.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:flutter_web/features/about_us/presentation/views/widgets/about_us_body.dart';
import 'package:flutter_web/core/widgets/custom_app_bar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.darkGreenColor,
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: AboutUsBody(),
            ),
          ),
        ],
      ),
    );
  }
}

class AboutUsMobileScreen extends StatelessWidget {
  const AboutUsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.darkGreenColor,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBarMobile(),
            Expanded(
              child: SingleChildScrollView(
                child: AboutUsMobileBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
