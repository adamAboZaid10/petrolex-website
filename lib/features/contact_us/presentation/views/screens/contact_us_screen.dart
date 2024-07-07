import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:flutter_web/features/contact_us/presentation/views/widgets/contact_us_body.dart';
import 'package:flutter_web/core/widgets/custom_app_bar.dart';

import '../../../../../core/Helpers/service_locator.dart';
import '../../controller/contact_us_bloc.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ContactUsBloc>(),
      child: const Scaffold(
        body: Column(
          children: [

            CustomAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: ContactUsBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactUsMobileScreen extends StatelessWidget {
  const ContactUsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ContactUsBloc>(),
      child: const Scaffold(
        backgroundColor: AppColors.darkGreenColor,
        body: SafeArea(
          child: Column(
            children: [
              CustomAppBarMobile(),
              Expanded(
                child: SingleChildScrollView(
                  child: ContactUsMobileBody(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
