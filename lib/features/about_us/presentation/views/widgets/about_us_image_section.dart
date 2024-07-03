import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsImageSection extends StatelessWidget {
  const AboutUsImageSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.sp,
      decoration:const  BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/new_about_us.jfif'),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}

class AboutUsMobileImageSection extends StatelessWidget {
  const AboutUsMobileImageSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.sp,
      decoration:const  BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image/new_about_us.jfif'),
          fit: BoxFit.cover,
        )
      ),
    );
  }
}
