import 'package:aldiaa_project/view/screens/products/bakery_screen.dart';
import 'package:aldiaa_project/view/screens/notifications_page/notifications_screen.dart';
import 'package:aldiaa_project/splash_screen.dart';
import 'package:aldiaa_project/view/screens/home_pages/the_main_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'helper/custom_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Tajawal',
        primaryColor: primarycolor,
        canvasColor: const Color(0xFF84B92F),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xFF84B92F),
        ),
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        MainPageScreen.routeName: (context) => const MainPageScreen(),
        BakeryScreen.routeName: (context) => const BakeryScreen(),
        NotificationsScreen.routName: (context) => const NotificationsScreen(),
      },
    );
  }
}
