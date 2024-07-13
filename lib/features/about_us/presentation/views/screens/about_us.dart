import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:flutter_web/features/about_us/presentation/views/widgets/about_us_body.dart';
import 'package:flutter_web/core/widgets/custom_app_bar.dart';
import 'package:flutter_web/features/home/presentation/controller/home_bloc.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor:Colors.white,
      body: Column(
        children: [
          CustomAppBar(),
          Expanded(
            child: SingleChildScrollView(
              child: AboutUsBody(),
            ),
          ),
        ],
      ),
    );
  }
}

class AboutUsMobileScreen extends StatelessWidget {
  const AboutUsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Scaffold(
        backgroundColor:Colors.white,
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
                          child: AboutUsMobileBody(),
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
