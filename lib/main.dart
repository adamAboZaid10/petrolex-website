import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_web/core/utils/app_colors.dart';
import 'package:flutter_web/features/home/presentation/views/screens/home_screen_mobile.dart';
import 'package:flutter_web/features/home/presentation/views/screens/home_screen_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(690, 360),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData().copyWith(
            scaffoldBackgroundColor: AppColors.backgroundColor,
          ),
          debugShowCheckedModeBanner: false,
          title: 'Flutter web',
          home: const ResponsiveScreen(),
        );
      },
    );
  }
}

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 600) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1.25,
            ),
            child: const HomeScreen(),
          );
        } else {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 0.6,
            ),
            child: const HomeScreenMobile(),
          );
        }
      },
    );
  }
}
