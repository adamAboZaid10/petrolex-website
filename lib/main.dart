import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/Helpers/service_locator.dart';
import 'core/utils/app_colors.dart';
import 'core/utils/routes.dart';
import 'features/home/presentation/views/screens/home_screen.dart';
import 'features/home/presentation/views/screens/home_screen_mobile.dart';
import 'firebase_options.dart';
import 'dart:html' as html;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,

  );
  ServiceLocator.init();


  runApp(const MyApp());
  updateTabInfo('Petrolex Oil', 'assets/image/favicon.png');
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
        return MaterialApp.router(
          theme: ThemeData().copyWith(
            scaffoldBackgroundColor: AppColors.backgroundColor,
          ),
          debugShowCheckedModeBanner: false,
          title: 'Petrolex Oil',
          routerConfig: goRouter,
        );
      },
    );
  }
}


void updateTabInfo(String title, String iconPath) {
  // Update the title
  html.document.title = title;

  // Update the favicon
  final link = html.document.querySelector("link[rel*='icon']") as html.LinkElement?;
  if (link != null) {
    link.href = iconPath;
  } else {
    final newLink = html.LinkElement()
      ..rel = 'icon'
      ..type = 'image/png'
      ..href = iconPath;
    html.document.head?.append(newLink);
  }
}