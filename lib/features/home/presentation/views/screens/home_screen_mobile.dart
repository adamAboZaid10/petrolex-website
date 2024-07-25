import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petrolex/features/home/presentation/controller/home_bloc.dart';
import 'package:petrolex/features/home/presentation/views/widgets/home_screen_mobile/home_screen_mobile_body.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
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
                SafeArea(
                  child: Stack(
                    alignment: Alignment.topRight,
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
                              physics: const BouncingScrollPhysics(),
                              children: const [
                                HomeScreenMobileBody(),
                              ],
                            ),
                          ),
                        ],
                      ),
                      state.changeAppBar
                          ? const CustomItemMobileAppBar()
                          : Container(),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
