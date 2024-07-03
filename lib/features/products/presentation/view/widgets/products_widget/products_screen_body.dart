import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/widgets/footer.dart';
import 'package:flutter_web/features/products/presentation/view/widgets/products_widget/top_image.dart';

import 'custom_gird_view_products.dart';

class ProductsScreenBody extends StatelessWidget {
  const ProductsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       const CustomTopImageProductsScreen(),
        SizedBox(height: 20.h,),
        const CustomGirdViewProducts(),
        FooterWidget(),
      ],
    );
  }
}