import 'package:go_router/go_router.dart';

import '../../features/about_us/presentation/views/screens/base_about_us.dart';
import '../../features/contact_us/presentation/views/screens/base_contact_us.dart';
import '../../features/home/presentation/views/screens/base_home.dart';
import '../../features/products/presentation/view/screeens/base_products.dart';
import '../../features/products/presentation/view/screeens/base_products_details.dart';
  class AppRoutes{
    static const String home = '/';
    static const String products = '/products';
    static const String aboutUs = '/about-us';
    static const String contactUs = '/contact-us';
    static const String productsDetails = '/products-details';
  }

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const ResponsiveScreen(),
    ),
    GoRoute(
      path: AppRoutes.products,
      builder: (context, state) => const BaseProducts(),
    ),
    GoRoute(
      path: AppRoutes.aboutUs,
      builder: (context, state) => const BaseAboutUsScreen(),
    ),
    GoRoute(
      path: AppRoutes.contactUs,
      builder: (context, state) => const BaseContactUsScreen(),
    ),
    GoRoute(
      path: AppRoutes.productsDetails,
      builder: (context, state) =>  BaseProductsDetails(
        id: state.extra as int,
      ),

    ),
  ],
);