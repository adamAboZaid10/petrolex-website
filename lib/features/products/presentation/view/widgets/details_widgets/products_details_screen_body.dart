import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/features/products/presentation/view/widgets/details_widgets/products_details.dart';
import 'package:flutter_web/features/products/presentation/view/widgets/products_widget/top_image.dart';

import '../../../../../../core/widgets/footer.dart';



class ProductsDetailsScreenBody extends StatelessWidget {
  const ProductsDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const CustomTopImageProductsScreen(),
        SizedBox(height: 20.h,),
       const ProductsDetails(),
        FooterWidget(),
      ],
    );
  }
}
