import 'package:flutter/material.dart';

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
