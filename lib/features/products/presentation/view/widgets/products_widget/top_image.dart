import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTopImageProductsScreen extends StatelessWidget {
  const CustomTopImageProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 100.sp,
      width: double.infinity,
      child: Image.asset(
        'assets/image/slider3.jpg',
        fit: BoxFit.cover,
        colorBlendMode: BlendMode.srcOver,
      ),
    );
  }
}

class CustomTopImageMobileProductsScreen extends StatelessWidget {
  const CustomTopImageMobileProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 200.sp,
      width: double.infinity,
      child: Image.asset(
        'assets/image/slider3.jpg',
        fit: BoxFit.cover,
        colorBlendMode: BlendMode.srcOver,
      ),
    );
  }
}
