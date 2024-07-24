import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/Helpers/service_locator.dart';
import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../home/presentation/controller/home_bloc.dart';
import '../../controller/products_bloc.dart';
import '../widgets/details_widgets/products_details_screen_body.dart';

class ProductsDetailsScreen extends StatelessWidget {
  const ProductsDetailsScreen({super.key, this.id});

  final int? id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ProductsBloc>()..add(const GetProductsEvent()),
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/image/products.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Column(
              children: [
                const CustomAppBar(),
                Expanded(
                  child: SingleChildScrollView(
                    child: ProductsDetailsScreenBody(
                      id: id!,
                    ),
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

class ProductsDetailsMobileScreen extends StatelessWidget {
  const ProductsDetailsMobileScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              sl<ProductsBloc>()..add(const GetProductsEvent()),
        ),
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
      ],
      child: Scaffold(
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Stack(
              children: [
                Image.asset(
                  'assets/image/products.jpg',
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Stack(
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
                            children: [
                              ProductsDetailsMobileScreenBody(
                                id: id,
                              ),
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
              ],
            );
          },
        ),
      ),
    );
  }
}
