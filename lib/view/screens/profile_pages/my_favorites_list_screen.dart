import 'package:aldiaa_project/helper/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MyFavoritesScreen extends StatelessWidget {
  const MyFavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Sizer(
            builder: ((context, orientation, deviceType) => Scaffold(
                  backgroundColor: primarylightcolor,
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    centerTitle: true,
                    toolbarHeight: 10.h,
                    elevation: 2,
                    title: Text(
                      'قائمة مفضلاتي',
                      style: TextStyle(
                          fontSize: 21.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    leading: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                          size: 25.sp,
                        )),
                  ),
                  body: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
                    child: Column(
                      children: [
                        buildCardFavorite(),
                        SizedBox(height: 3.h),
                        buildCardFavorite(),
                      ],
                    ),
                  ),
                ))));
  }

  Card buildCardFavorite() {
    return Card(
      elevation: 6,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 10.w,
                height: 5.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: Color(0x1AFF7272),
                ),
                child: Center(
                  child: Text(
                    '20%',
                    style: TextStyle(
                        color: colorContainer,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
            child: Row(
              children: [
                Image.asset('${imagePath}Image 23.png'),
                SizedBox(width: 3.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'قهوة الغامقه',
                      style: TextStyle(fontSize: 18.sp, color: colortext2),
                    ),
                    Text(
                      '150' ' ' 'جنية',
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: primarycolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '150' ' ' 'جنية',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: colortext,
                          decoration: TextDecoration.lineThrough),
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: colorContainer4,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(5.sp),
                            child: Center(
                                child: GestureDetector(
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.shopping_cart,
                                    color: Color(0xFF0E1638),
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    'اضف للطلبات',
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: const Color(0xFF0E1638)),
                                  )
                                ],
                              ),
                            )),
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: colorContainer4,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(5.sp),
                            child: Center(
                                child: GestureDetector(
                              child: const Icon(
                                Icons.delete,
                                color: Colors.grey,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
