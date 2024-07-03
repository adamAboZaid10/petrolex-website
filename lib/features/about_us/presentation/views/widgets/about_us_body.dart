import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web/features/about_us/presentation/views/widgets/about_us_details.dart';
import 'package:flutter_web/features/about_us/presentation/views/widgets/about_us_image_section.dart';

import '../../../../../core/widgets/footer.dart';

class AboutUsBody extends StatelessWidget {
  const AboutUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AboutUsImageSection(),
        const AboutUsDetails(),
        FooterWidget(),
      ],
    );
  }
}
