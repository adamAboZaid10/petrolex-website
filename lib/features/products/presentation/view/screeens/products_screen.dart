
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:flutter_web/features/products/data/models/products_model.dart';

import '../../../../../core/Helpers/service_locator.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../controller/products_bloc.dart';
import '../widgets/products_widget/products_screen_body.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProductsBloc>()..add(const GetProductsEvent()),
      child: const Scaffold(
        backgroundColor: AppColors.darkGreenColor,
        body: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: ProductsScreenBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ProductsMobileScreen extends StatelessWidget {
  const ProductsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProductsBloc>()..add(const GetProductsEvent()),
      child: const Scaffold(
        backgroundColor: AppColors.darkGreenColor,
        body: SafeArea(
          child: Column(
            children: [
              CustomAppBarMobile(),
              Expanded(
                child: SingleChildScrollView(
                  child: ProductsMobileScreenBody(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
