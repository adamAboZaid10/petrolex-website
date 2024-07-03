import 'package:flutter/material.dart';
import 'package:flutter_web/core/utils/app_colors.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import '../widgets/products_widget/products_screen_body.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
    );
  }
}

class ProductsMobileScreen extends StatelessWidget {
  const ProductsMobileScreen({super.key});

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
                child: ProductsMobileScreenBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
