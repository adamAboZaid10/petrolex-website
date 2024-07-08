import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import '../../../../../core/Helpers/service_locator.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../home/presentation/controller/home_bloc.dart';
import '../../controller/products_bloc.dart';
import '../widgets/products_widget/products_screen_body.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      sl<ProductsBloc>()
        ..add(const GetProductsEvent()),
      child: const Scaffold(
        backgroundColor: AppColors.darkGreenColor,
        body: Column(
          children: [
            CustomAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: ProductsScreenBody(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ProductsMobileScreen extends StatelessWidget {
  const ProductsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          sl<ProductsBloc>()
            ..add(const GetProductsEvent()),
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
                      CustomAppBarMobile(onTap: () {
                        context.read<HomeBloc>().add(ChangeAppBarEvent());
                      },),
                      const Expanded(
                        child: SingleChildScrollView(
                          child: ProductsMobileScreenBody(),
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
