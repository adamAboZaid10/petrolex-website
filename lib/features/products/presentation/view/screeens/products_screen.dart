import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:flutter_web/features/products/data/models.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import '../widgets/products_widget/products_screen_body.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}


class _ProductsScreenState extends State<ProductsScreen> {

// List<Product> products = [];
// DatabaseReference productsRef = FirebaseDatabase.instance.ref().child('products');
// @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();

//     retrieveProducts();
//   }

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
