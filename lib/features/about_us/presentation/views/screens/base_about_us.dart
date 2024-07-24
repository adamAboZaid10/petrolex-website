import 'package:flutter/material.dart';
import 'package:petrolex/features/about_us/presentation/views/screens/about_us.dart';

class BaseAboutUsScreen extends StatelessWidget {
  const BaseAboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: const TextScaler.linear(1.25),
            ),
            child: const AboutUsScreen(),
          );
        } else {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: const TextScaler.linear(0.6),
            ),
            child:  AboutUsMobileScreen(),
          );
        }
      },
    );
  }
}