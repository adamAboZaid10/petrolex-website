import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/features/products/presentation/controller/products_bloc.dart';
import '../../../../../core/Helpers/service_locator.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../widgets/details_widgets/products_details_screen_body.dart';

class ProductsDetailsScreen extends StatelessWidget {
  const ProductsDetailsScreen({super.key,  this.id});
final int? id;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProductsBloc>()..add(const GetProductsEvent()),
      child:  Scaffold(
        body: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: ProductsDetailsScreenBody(id: id!,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductsDetailsMobileScreen extends StatelessWidget {
  const ProductsDetailsMobileScreen({super.key,required this.id});
final int id;
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => sl<ProductsBloc>()..add(const GetProductsEvent()),
      child: Scaffold(
        backgroundColor: AppColors.darkGreenColor,
        body: Column(
          children: [
            SizedBox(height: 10.h,),
            const CustomAppBarMobile(),
             Expanded(
              child: SingleChildScrollView(
                child: ProductsDetailsMobileScreenBody(id: id,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
