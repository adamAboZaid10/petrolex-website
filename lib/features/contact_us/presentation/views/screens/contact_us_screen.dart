import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:flutter_web/features/contact_us/presentation/views/widgets/contact_us_body.dart';
import 'package:flutter_web/core/widgets/custom_app_bar.dart';
import '../../../../../core/Helpers/service_locator.dart';
import '../../../../home/presentation/controller/home_bloc.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<ContactUsBloc>(),
        ),
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColors.darkGreenColor,
        body: SafeArea(
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return Stack(
                children: [
                  Column(
                    children: [
                      CustomAppBarMobile(
                        onTap: () {
                          context.read<HomeBloc>().add(ChangeAppBarEvent());
                        },
                      ),
                      const Expanded(
                        child: SingleChildScrollView(
                          child: ContactUsMobileBody(),
                        ),
                      ),
                    ],
                  ),
                  state.changeAppBar
                      ? const CustomItemMobileAppBar()
                      : Container(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
