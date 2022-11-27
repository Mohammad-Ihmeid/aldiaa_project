import 'package:aldiaa_project/view/base/custom_button_view_1.dart';
import 'package:aldiaa_project/view/base/custom_button_view_2.dart';
import 'package:aldiaa_project/view/base/custom_text_field.dart';
import 'package:aldiaa_project/view/base/custom_text_view.dart';
import 'package:aldiaa_project/view/screens/login_signup/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/custom_color.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: ((context, orientation, deviceType) {
        return SafeArea(
          child: Scaffold(
            //backgroundColor: primarylightcolor,
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        color: primarylightcolor),
                    child: Column(
                      children: [
                        const CustomTextView(
                          size: 26.0,
                          label: 'حساب جديد',
                          color: Colors.black,
                        ),
                        SizedBox(height: 2.h),
                        const CustomTextView(
                          size: 13.0,
                          label: 'من فضلك ادخل بياناتك الشخصية',
                          color: colortext,
                        ),
                        SizedBox(height: 3.h),
                        CustomTextField(
                            icon: '${iconPath}icon_user_name.png',
                            label: 'اسم المستخدم'),
                        CustomTextField(
                            icon: '${iconPath}icon_smart_phone.png',
                            label: 'رقم الهاتف'),
                        CustomTextField(
                            icon: '${iconPath}icon_lock.png',
                            label: 'كلمة المرور'),
                        CustomTextField(
                            icon: '${iconPath}icon_lock.png',
                            label: 'تاكيد كلمة المرور'),
                        const CustomButtonView1(text: 'حساب جديد'),
                        const CustomButtonView2(),
                        SizedBox(height: 3.h),
                      ],
                    ),
                  ),
                  Container(
                    color: primarycolor,
                    child: Padding(
                      padding: EdgeInsets.only(top: 4.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Get.off(const LogInScreen());
                              });
                            },
                            child: Text(
                              'تسجيل دخول',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(width: 2.w),
                          const CustomTextView(
                              size: 14.0,
                              label: 'أمتلك حساب بالفعل',
                              color: Color.fromARGB(200, 255, 255, 255)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
