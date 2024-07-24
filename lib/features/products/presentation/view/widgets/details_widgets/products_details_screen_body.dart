import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:petrolex/features/products/presentation/view/widgets/details_widgets/products_details.dart';
import '../../../../../../core/widgets/footer.dart';



class ProductsDetailsScreenBody extends StatelessWidget {
  const ProductsDetailsScreenBody({super.key, required this.id});
final int id;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        // const CustomTopImageProductsScreen(),
        SizedBox(height: 20.h,),
        ProductsDetails(id: id,),
        FooterWidget(),
      ],
    );
  }
}


class ProductsDetailsMobileScreenBody extends StatelessWidget {
  const ProductsDetailsMobileScreenBody({super.key, required this.id});
final int id;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        // const CustomTopImageMobileProductsScreen(),
        SizedBox(height: 20.h,),
        ProductsMobileDetails(id: id,),
        FooterMobileWidget(),
      ],
    );
  }
}
