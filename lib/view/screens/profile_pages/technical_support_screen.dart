import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/custom_color.dart';

class TechnicalSupportScreen extends StatelessWidget {
  const TechnicalSupportScreen({super.key});

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
                      'الدعم الفني',
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'تواصيل مع خدمة العملاء',
                          style: TextStyle(fontSize: 16.sp, color: colortext1),
                        ),
                        SizedBox(height: 2.h),
                        Center(
                          child: Text(
                            'من خلال وسائل التواصل المتوفرة ادناه',
                            style:
                                TextStyle(fontSize: 16.sp, color: colortext1),
                          ),
                        ),
                        SizedBox(height: 3.h),
                        buildCard(
                            const Icon(Icons.whatsapp, color: primarycolor),
                            'محادثة علي الواتس'),
                        SizedBox(height: 3.h),
                        buildCard(
                          const Icon(Icons.phone, color: primarycolor),
                          'مكالمة خدمة العملاء',
                        ),
                        SizedBox(height: 3.h),
                        buildCard(
                          const Icon(Icons.email, color: primarycolor),
                          'ارسال رسالة',
                        ),
                      ],
                    ),
                  ),
                ))));
  }

  Card buildCard(Icon icon, String text) {
    return Card(
      elevation: 6,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 5.w),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              color: Colors.grey[200],
              child: icon,
            ),
            SizedBox(width: 5.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize: 17.sp, color: colortext2),
                ),
                SizedBox(height: 1.h),
                SizedBox(
                  width: 70.w,
                  child: Text(
                    'هذا النص هو مثال لنص يمكن أن يستبدل في',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: colortext,
                    ),
                    softWrap: true,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
