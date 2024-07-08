import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/widgets/footer.dart';
import 'custom_gird_view_products.dart';

class ProductsScreenBody extends StatelessWidget {
  const ProductsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       // const CustomTopImageProductsScreen(),
        SizedBox(height: 20.h,),
        const CustomGirdViewProducts(),
        FooterWidget(),
      ],
    );
  }
}

class ProductsMobileScreenBody extends StatelessWidget {
  const ProductsMobileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       // const CustomTopImageMobileProductsScreen(),
        SizedBox(height: 20.h,),
        const CustomGirdViewMobileProducts(),
        FooterMobileWidget(),
      ],
    );
  }
}
