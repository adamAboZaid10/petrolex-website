import 'package:flutter/material.dart';
import 'package:flutter_web/features/contact_us/presentation/views/screens/contact_us_screen.dart';
import 'package:flutter_web/features/products/presentation/view/screeens/products_details_screen.dart';

class BaseProductsDetails extends StatelessWidget {
  const BaseProductsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1.25,
            ),
            child: const ProductsDetailsScreen(),
          );
        } else {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 0.6,
            ),
            child: const ProductsDetailsMobileScreen(),
          );
        }
      },
    );
  }
}