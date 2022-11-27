import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/custom_color.dart';

class InviteAfriendScreen extends StatelessWidget {
  const InviteAfriendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Sizer(
        builder: ((context, orientation, deviceType) => SafeArea(
              child: Scaffold(
                body: Stack(
                  children: [
                    Center(
                      child: Container(
                          width: double.infinity,
                          height: 100.h,
                          color: primarycolor,
                          child: SingleChildScrollView(
                            physics: const BouncingScrollPhysics(),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(height: 10.h),
                                Text(
                                  'احصل علي + 50 دينار',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5.h),
                                Image.asset(
                                    '${imagePath}image_invite_frind.png'),
                                SizedBox(height: 5.h),
                                Text(
                                  'ادعو صديق و احصل علي 200 نقطه',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 5.h),
                                SizedBox(
                                  width: 70.w,
                                  child: Text(
                                    'ادعوا اصدقائك و عائلتك و احصل علي 200 نقطه بما يعادل    50  دينار',
                                    style: TextStyle(
                                        fontSize: 14.sp, color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 5.h),
                                Container(
                                    height: 8.h,
                                    width: 60.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Color(0x6A669E4A),
                                            blurRadius: 10.0)
                                      ],
                                    ),
                                    child: Center(
                                      child: GestureDetector(
                                        child: Text(
                                          'الحصول علي رابط',
                                          style: TextStyle(
                                              fontSize: 16.sp,
                                              color: primarycolor),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          )),
                    ),
                    Positioned(
                        top: 2.h,
                        right: 2.h,
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                              size: 25.sp,
                            )))
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
