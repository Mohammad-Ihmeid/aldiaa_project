import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../helper/custom_color.dart';

class CustomTextField extends StatelessWidget {
  final String icon;

  final String label;

  const CustomTextField({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  label,
                  style: TextStyle(fontSize: 20.sp),
                  textAlign: TextAlign.right,
                ),
                TextFormField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: label,
                    hintStyle: const TextStyle(color: colortext),
                    contentPadding: EdgeInsets.zero,
                    enabledBorder: InputBorder.none,
                  ),
                  textInputAction: TextInputAction.next,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
            child: Image.asset(icon),
          ),
        ],
      ),
    );
  }
}
