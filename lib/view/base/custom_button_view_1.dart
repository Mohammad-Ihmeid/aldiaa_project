import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../helper/custom_color.dart';

class CustomButtonView1 extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomButtonView1({Key? key, required this.text, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
      child: SizedBox(
        height: 8.h, //65
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(primarycolor),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          onPressed: onPressed,
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 16.sp),
            ),
          ),
        ),
      ),
    );
  }
}
