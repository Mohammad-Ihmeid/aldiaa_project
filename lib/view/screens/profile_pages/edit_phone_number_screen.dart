import 'package:aldiaa_project/view/screens/profile_pages/send_code_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/custom_color.dart';
import '../../base/custom_button_view_1.dart';

class EditPhoneNumberScreen extends StatelessWidget {
  const EditPhoneNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Sizer(
          builder: ((context, orientation, deviceType) => SafeArea(
                child: Scaffold(
                  resizeToAvoidBottomInset: false,
                  body: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 50.h,
                        color: primarycolor,
                        child: Center(
                          child: Image.asset(
                            '${imagePath}logo.png',
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 40.h),
                        child: Container(
                            height: double.infinity,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                              color: primarylightcolor,
                            ),
                            child: Column(
                              children: [
                                const SizedBox(height: 10),
                                const Text(
                                  'تغيير رقم الجوال',
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 10),
                                const Text(
                                  'أدخل رقم جوالك لإرسال رمز التفعيل',
                                  style:
                                      TextStyle(fontSize: 13, color: colortext),
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 3.w, vertical: 1.h),
                                  margin: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 50),
                                        child: Text(
                                          'رقم الهاتف',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ),
                                      TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'رقم الهاتف',
                                          labelStyle: const TextStyle(
                                              fontSize: 14, color: colortext3),
                                          contentPadding: EdgeInsets.zero,
                                          enabledBorder: InputBorder.none,
                                          prefixIcon: Image.asset(
                                              '${iconPath}icon_smart_phone.png'),
                                        ),
                                        textInputAction: TextInputAction.next,
                                      ),
                                    ],
                                  ),
                                ),
                                CustomButtonView1(
                                  text: 'ارسال',
                                  onPressed: () {
                                    Get.to(const SendCodeScreen());
                                  },
                                ),
                              ],
                            )),
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                ),
              )),
        ));
  }
}
