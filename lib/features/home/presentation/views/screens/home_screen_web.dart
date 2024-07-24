import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petrolex/features/home/presentation/controller/home_bloc.dart';
import 'package:petrolex/features/home/presentation/views/widgets/home_screen_body.dart';

import '../../../../../core/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
           const  Column(
              children: [
                CustomAppBar(),
                Expanded(
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: HomeScreenBody(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
