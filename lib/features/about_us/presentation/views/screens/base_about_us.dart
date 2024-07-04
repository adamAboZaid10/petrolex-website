import 'package:flutter/material.dart';
import 'package:flutter_web/features/about_us/presentation/views/screens/about_us.dart';
import 'package:flutter_web/features/contact_us/presentation/views/screens/contact_us_screen.dart';

class BaseAboutUsScreen extends StatelessWidget {
  const BaseAboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1.25,
            ),
            child: const AboutUsScreen(),
          );
        } else {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 0.6,
            ),
            child: const AboutUsMobileScreen(),
          );
        }
      },
    );
  }
}