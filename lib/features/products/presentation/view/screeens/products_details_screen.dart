import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../widgets/details_widgets/products_details_screen_body.dart';

class ProductsDetailsScreen extends StatelessWidget {
  const ProductsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: ProductsDetailsScreenBody(),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductsDetailsMobileScreen extends StatelessWidget {
  const ProductsDetailsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.darkGreenColor,
      body: Column(
        children: [
          SizedBox(height: 10.h,),
          const CustomAppBarMobile(),
          const Expanded(
            child: SingleChildScrollView(
              child: ProductsDetailsMobileScreenBody(),
            ),
          ),
        ],
      ),
    );
  }
}
