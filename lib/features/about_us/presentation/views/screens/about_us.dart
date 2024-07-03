import 'package:flutter/material.dart';
import 'package:flutter_web/core/widgets/footer.dart';
import 'package:flutter_web/features/about_us/presentation/views/widgets/about_us_body.dart';
import 'package:flutter_web/core/widgets/custom_app_bar.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
              color: Colors.white,

                // image: DecorationImage(
                //   image: AssetImage('assets/image/background.jpg'),
                //   fit: BoxFit.cover,
                // ),
              ),
            ),
           Column(
        children: [
          const CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const AboutUsBody(),
                  FooterWidget()
                ],
              ),
            ),
          ),
        ],
      ),
        ]
      ) 
    );
  }
}
