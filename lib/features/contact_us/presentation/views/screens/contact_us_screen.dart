import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:flutter_web/features/contact_us/presentation/views/widgets/ask_question_section.dart';
import 'package:flutter_web/features/contact_us/presentation/views/widgets/contact_us_body.dart';
import 'package:flutter_web/core/widgets/custom_app_bar.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
          CustomAppBar(),
          ContactUsBody(),
        
        ],
        ),
      ),
    );
  }
}


