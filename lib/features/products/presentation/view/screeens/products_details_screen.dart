import 'package:flutter/material.dart';
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
