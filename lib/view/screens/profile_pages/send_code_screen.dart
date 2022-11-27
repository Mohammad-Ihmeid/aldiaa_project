import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/custom_color.dart';
import '../../base/custom_button_view_1.dart';

class SendCodeScreen extends StatelessWidget {
  const SendCodeScreen({super.key});

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
                        child: Image.asset(
                          '${imagePath}logo.png',
                          alignment: Alignment.center,
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
                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(height: 10),
                                const Center(
                                  child: Text(
                                    'تغيير رقم الجوال',
                                    style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                const Center(
                                  child: Text(
                                    'أدخل رقم جوالك لإرسال رمز التفعيل',
                                    style: TextStyle(
                                        fontSize: 13, color: colortext),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      buildExpanded(),
                                      SizedBox(width: 3.w),
                                      buildExpanded(),
                                      SizedBox(width: 3.w),
                                      buildExpanded(),
                                      SizedBox(width: 3.w),
                                      buildExpanded(),
                                    ],
                                  ),
                                ),
                                CustomButtonView1(
                                  text: 'ارسال',
                                  onPressed: () {},
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'إعادة ارسال الكود',
                                      style: TextStyle(fontSize: 13.sp),
                                    ),
                                    const SizedBox(width: 10),
                                    Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            border: Border.all(
                                                color: primarycolor, width: 2)),
                                        child: const Text(
                                          '45',
                                          style: TextStyle(
                                              color: primarycolor,
                                              fontWeight: FontWeight.bold),
                                        ))
                                  ],
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

  Expanded buildExpanded() {
    return Expanded(
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.white)),
          labelText: '-',
          labelStyle: const TextStyle(fontSize: 30, color: colortext3),
          contentPadding: const EdgeInsets.all(30),
        ),
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.number,
      ),
    );
  }
}
