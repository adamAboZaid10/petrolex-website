
import 'package:flutter/material.dart';
import 'package:flutter_web/features/contact_us/presentation/views/widgets/ask_question_section.dart';
import 'package:flutter_web/features/contact_us/presentation/views/widgets/get_in_touch_section.dart';

class ContactUsBody extends StatelessWidget {
  const ContactUsBody ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         AskAQuestionWidget(),
         GetInTouchSection(),
         
      ],
    );
  }
}