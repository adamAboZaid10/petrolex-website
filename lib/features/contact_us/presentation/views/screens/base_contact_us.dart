import 'package:flutter/material.dart';
import 'package:petrolex/features/contact_us/presentation/views/screens/contact_us_screen.dart';

class BaseContactUsScreen extends StatelessWidget {
  const BaseContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1.25,
            ),
            child: const ContactUsScreen(),
          );
        } else {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 0.6,
            ),
            child: const ContactUsMobileScreen(),
          );
        }
      },
    );
  }
}