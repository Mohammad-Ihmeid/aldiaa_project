import 'package:aldiaa_project/view/screens/notifications_page/notifications_screen.dart';
import 'package:aldiaa_project/view/screens/products/test_scree.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/custom_color.dart';
import '../../base/custom_text_view.dart';

class MainPageScreen extends StatefulWidget {
  static const routeName = 'Main_page';
  const MainPageScreen({super.key});

  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Sizer(
          builder: ((context, orientation, deviceType) => Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    height: 36.h,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          height: 30.h,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.elliptical(50, 12),
                              bottomRight: Radius.elliptical(50, 12),
                            ),
                            color: primarycolor,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.w, vertical: 1.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 80.w,
                                height: 10.h,
                                child: TextFormField(
                                  showCursor: true,
                                  textAlign: TextAlign.right,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'منتجات , عروض , أقسام',
                                    hintStyle:
                                        const TextStyle(color: colortext),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      borderSide: const BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        borderSide: const BorderSide(
                                            color: Colors.white)),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(const NotificationsScreen());
                                },
                                child: Image.asset(
                                  '${iconPath}icon_bell.png',
                                  width: 10.w,
                                  height: 10.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            top: 14.h,
                            right: 1.w,
                            left: 1.w,
                            child: Image.asset('${imagePath}1234.png')),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        'تم تجهيز طلبك الان برجاء الانتظار',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: const Color(0xFF0E1638),
                          fontWeight: FontWeight.bold,
                        ),
                        //textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
                    child: Container(
                      width: double.infinity,
                      height: 8.h,
                      decoration: BoxDecoration(
                          border: Border.all(color: colorborder),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.only(left: 2.w, right: 2.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomTextView(
                                size: 14.0, label: 'منذ', color: colortext1),
                            Text(
                              'PM 7:30',
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '|',
                              style: TextStyle(
                                  fontSize: 14.sp, color: Colors.grey),
                            ),
                            const CustomTextView(
                                size: 14.0,
                                label: 'الاجمالي',
                                color: colortext1),
                            Text(
                              '450' 'دينار',
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.right,
                            ),
                            Text(
                              '|',
                              style: TextStyle(
                                  fontSize: 14.sp, color: Colors.grey),
                            ),
                            Image.asset('${iconPath}icon_wallet.png'),
                            Text(
                              'كاش',
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 5.w),
                      child: GridView(
                        physics: const BouncingScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        children: categories
                            .map((catdata) => TestScreen(
                                  id: catdata.id.toString(),
                                  title: catdata.title,
                                  image: catdata.image,
                                  subtitle: catdata.suptitle,
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
