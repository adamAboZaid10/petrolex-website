import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petrolex/features/about_us/presentation/views/widgets/about_us_body.dart';
import 'package:petrolex/core/widgets/custom_app_bar.dart';
import 'package:petrolex/features/home/presentation/controller/home_bloc.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
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
        backgroundColor: Colors.white,
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
                      Expanded(
                        child: ListView(
                          children: const [
                            AboutUsMobileBody(),
                          ],
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
