import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'home_screen_mobile.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: const TextScaler.linear(1.25),
            ),
            child: const HomeScreen(),
          );
        } else {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: const TextScaler.linear(0.6),
            ),
            child: const HomeScreenMobile(),
          );
        }
      },
    );
  }

}