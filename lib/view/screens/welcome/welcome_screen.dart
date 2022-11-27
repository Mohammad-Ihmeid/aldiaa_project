import 'package:aldiaa_project/view/screens/login_signup/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/custom_color.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List<String> images = [
    '${imagePath}onboarding1.png',
    '${imagePath}onboarding2.png',
    '${imagePath}onboarding3.png',
  ];
  List text_1 = [
    'ستجد كل ما. تحتاجه في الضيا ء',
    'نضمن لك خدمة ممتازة ايمنا كنت',
    'عروض حصرية و منتجات مميزة',
  ];
  List text_2 = [];
  int countnumper = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Sizer(builder: ((context, orientation, deviceType) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 132, 185, 47),
          body: Column(
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Image.asset(
                      images[countnumper],
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      right: 7.w,
                      top: 7.h,
                      child: TextButton(
                        onPressed: () {
                          Get.off(const LogInScreen());
                        },
                        child: const Text(
                          'تخطي',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  //height: 30.h,
                  padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      text1(countnumper),
                      SizedBox(height: 2.h),
                      text2(),
                      SizedBox(height: 2.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              containerbutton(countnumper, 0),
                              SizedBox(width: 2.w),
                              containerbutton(countnumper, 1),
                              SizedBox(width: 2.w),
                              containerbutton(countnumper, 2),
                            ],
                          ),
                          SizedBox(
                            width: 40.w, //178
                            height: 8.h, //61
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: const MaterialStatePropertyAll(
                                    Color(0xFF84B92F)),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (countnumper < 2) {
                                    countnumper = countnumper + 1;
                                  } else {
                                    countnumper = 0;
                                    Get.off(const LogInScreen());
                                  }
                                });
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'التالي',
                                    style: TextStyle(fontSize: 18.sp),
                                  ),
                                  SizedBox(
                                      width: 8.w,
                                      height: 8.h,
                                      child: Image.asset(
                                          "${iconPath}icon_arrow.png")),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      })),
    );
  }

  Text text1(int index) {
    return Text(
      text_1[index],
      style: TextStyle(
        fontSize: 21.sp,
      ),
    );
  }

  Text text2() {
    return Text(
      "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة لقد تم توليد هذا النص من مولد نفس المساحة لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك",
      style: TextStyle(
        fontSize: 14.sp,
      ),
      maxLines: 4,
      textAlign: TextAlign.right,
    );
  }

  Container containerbutton(int color, int index) {
    return Container(
      height: 2.h, //10
      width: 10.w, //30
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          shape: BoxShape.rectangle,
          color: color == index
              ? const Color(0xFF84B92F)
              : const Color(0xFF84B92F).withOpacity(0.3)),
    );
  }
}
