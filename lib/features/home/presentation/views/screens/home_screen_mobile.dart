import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web/features/home/presentation/controller/home_bloc.dart';
import 'package:flutter_web/features/home/presentation/views/widgets/home_screen_body.dart';
import 'package:flutter_web/features/home/presentation/views/widgets/home_screen_mobile/home_screen_mobile_body.dart';

import '../../../../../core/widgets/custom_app_bar.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child:  Scaffold(
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/backgrounds.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SafeArea(
              child:   Column(
                children: [
                  CustomAppBarMobile(),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: HomeScreenMobileBody(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
