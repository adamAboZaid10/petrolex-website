import 'package:flutter/material.dart';
import 'package:flutter_web/features/home/presentation/views/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:HomeScreenBody()
    );
  }
}