import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/custom_color.dart';

class MyPointScreen extends StatelessWidget {
  const MyPointScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Sizer(
        builder: ((context, orientation, deviceType) => SafeArea(
              child: Scaffold(
                body: Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        height: 27.h,
                        color: primarycolor,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'مجموع نقاطي الحاليه',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '2250',
                              style: TextStyle(
                                  fontSize: 48.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 22.h),
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
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 5.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Center(
                                      child: Image.asset(
                                          '${imagePath}image_point.png')),
                                  SizedBox(height: 2.h),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                              '${iconPath}icon_money.png'),
                                          Text(
                                            'الرصيد الحالي',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: const Color(0xFF606060)),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '59',
                                            style: TextStyle(
                                                fontSize: 17.sp,
                                                color: colortext1,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'دينار',
                                            style: TextStyle(fontSize: 17.sp),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 2.h),
                                  Container(
                                    width: double.infinity,
                                    height: 8.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            width: 2, color: primarycolor)),
                                    child: Center(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'استخدام النقاط',
                                          style: TextStyle(
                                              color: primarycolor,
                                              fontSize: 16.sp),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 2.h),
                                  Text(
                                    'نقاطي',
                                    style: TextStyle(
                                        fontSize: 18.sp,
                                        color: const Color(0xFF606060),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(height: 2.h),
                                  buildCardPoint(),
                                  SizedBox(height: 2.h),
                                  buildCardPoint(),
                                  SizedBox(height: 2.h),
                                  buildCardPoint(),
                                  SizedBox(height: 2.h),
                                  buildCardPoint(),
                                ],
                              ),
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

  Card buildCardPoint() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: EdgeInsets.all(5.sp),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('${iconPath}icon_motto.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '11 يناير 2020',
                      style: TextStyle(fontSize: 16.sp, color: colortext1),
                    ),
                    Text(
                      'طلب بقيمة 150  دينار',
                      style: TextStyle(fontSize: 12.sp, color: colortext3),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '+50',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: primarycolor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'نقطة',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: primarycolor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
