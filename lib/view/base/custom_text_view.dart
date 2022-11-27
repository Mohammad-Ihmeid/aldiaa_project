import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextView extends StatelessWidget {
  final double size;
  final String label;
  final Color color;

  const CustomTextView({
    Key? key,
    required this.size,
    required this.label,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        color: color,
        fontSize: size.sp,
        fontFamily: 'Tajawal',
      ),
    );
  }
}
