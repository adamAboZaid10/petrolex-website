import 'package:flutter/material.dart';
import 'package:petrolex/features/products/presentation/view/screeens/products_screen.dart';

class BaseProducts extends StatelessWidget {
  const BaseProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1.25,
            ),
            child: const ProductsScreen(),
          );
        } else {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 0.6,
            ),
            child: const ProductsMobileScreen(),
          );
        }
      },
    );
  }
}