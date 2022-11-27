import 'package:aldiaa_project/view/base/custom_button_view_2.dart';
import 'package:aldiaa_project/view/base/custom_text_field.dart';
import 'package:aldiaa_project/view/screens/home/home_screen.dart';
import 'package:aldiaa_project/view/screens/login_signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/custom_color.dart';
import '../../base/custom_button_view_1.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreen();
}

class _LogInScreen extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: ((context, orientation, deviceType) => SafeArea(
            child: Scaffold(
              body: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 35.h,
                    color: primarycolor,
                    child: Center(
                      child: Image.asset(
                        '${imagePath}logo.png',
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 35.h),
                    child: Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          color: primarylightcolor,
                        ),
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              SizedBox(height: 2.h),
                              Text(
                                'أهلاً بك و بعودتك',
                                style: TextStyle(fontSize: 26.sp),
                              ),
                              SizedBox(height: 1.h),
                              Text(
                                'أدخل رقم جوالك لإرسال رمز التفعيل',
                                style: TextStyle(
                                    fontSize: 13.sp, color: colortext),
                              ),
                              SizedBox(height: 2.h),
                              CustomTextField(
                                icon: '${iconPath}icon_smart_phone.png',
                                label: 'رقم الهاتف',
                              ),
                              CustomTextField(
                                icon: '${iconPath}icon_lock.png',
                                label: 'كلمة المرور',
                              ),
                              SizedBox(height: 2.h),
                              CustomButtonView1(
                                text: 'تسجيل دخول',
                                onPressed: () {
                                  Get.offAll(const HomeScreen());
                                },
                              ),
                              const CustomButtonView2(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Get.to(const SignUpScreen());
                                    },
                                    child: Text(
                                      'سجل الآن',
                                      style: TextStyle(
                                        color: primarycolor,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'لا تمتلك حساب ؟',
                                    style: TextStyle(
                                        color: colortext, fontSize: 14.sp),
                                  ),
                                ],
                              ),
                              Text(
                                'التصفح كزائر',
                                style: TextStyle(fontSize: 14.sp),
                              ),
                              SizedBox(height: 2.h),
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
