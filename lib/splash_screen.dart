import 'dart:async';

import 'package:aldiaa_project/view/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import 'helper/custom_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () async {
      await Get.to(const WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return Scaffold(
          backgroundColor: Colors.white,
          body: Sizer(
            builder: ((context, orientation, deviceType) => Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "${imagePath}logo.png",
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                )),
          ));
    }));
  }
}
