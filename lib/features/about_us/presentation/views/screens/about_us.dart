import 'package:flutter/material.dart';
import 'package:flutter_web/features/about_us/presentation/views/widgets/about_us_body.dart';
import 'package:flutter_web/features/home/presentation/views/widgets/custom_app_bar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        
      child: Column(
        children: [
     CustomAppBar(),
     AboutUsBody()
        ],
      ),
      )
      
    );
  }
}




