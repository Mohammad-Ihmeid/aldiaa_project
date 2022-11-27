import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../helper/custom_color.dart';

class CustomButtonView2 extends StatelessWidget {
  const CustomButtonView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
      child: SizedBox(
        height: 8.h,
        child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  side: const BorderSide(color: primarycolor, width: 2)))),
          onPressed: () {},
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'تسجيل دخول عن طريق فيسبوك؛',
                  style: TextStyle(color: primarycolor),
                ),
                SizedBox(width: 3.w),
                const Icon(
                  Icons.facebook_outlined,
                  color: primarycolor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
