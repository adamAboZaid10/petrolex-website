import 'package:flutter/material.dart';
import 'package:flutter_web/features/about_us/presentation/views/screens/about_us.dart';
import 'package:flutter_web/features/contact_us/presentation/views/screens/contact_us_screen.dart';
import 'package:flutter_web/features/home/presentation/views/screens/home_screen_web.dart';
import 'package:flutter_web/features/products/presentation/view/screeens/products_details_screen.dart';
import 'package:flutter_web/features/products/presentation/view/screeens/products_screen.dart';

class AppRoutes {
  static const String home = '/home';
  static const String aboutUs = '/about-us';
  static const String contactUs = '/contact-us';
  static const String products = '/products';
  static const String productDetails = '/product-details';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return transitionPage(const HomeScreen());
      case aboutUs:
        return transitionPage(const AboutUsScreen());
      case contactUs:
        return transitionPage(const ContactUsScreen());
      case products:
        return transitionPage(const ProductsScreen());
        case productDetails:
        return transitionPage(const ProductsDetailsScreen());
      default:
        return transitionPage(const HomeScreen());
    }
  }

  static transitionPage(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var tween = Tween(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeInOut));
        var offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
