import 'package:aldiaa_project/view/base/custom_button_view_1.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/custom_color.dart';

class ItemsDataScreen extends StatefulWidget {
  const ItemsDataScreen({super.key});

  @override
  State<ItemsDataScreen> createState() => _ItemsDataScreenState();
}

class _ItemsDataScreenState extends State<ItemsDataScreen> {
  int _radioValue = 0;
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Sizer(
            builder: ((context, orientation, deviceType) => Scaffold(
                  backgroundColor: primarylightcolor,
                  appBar: AppBar(
                    leading: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        )),
                    actions: [
                      Image.asset('${iconPath}icon_share.png'),
                      Image.asset('${iconPath}icon_heart.png'),
                    ],
                    backgroundColor: Colors.white,
                    elevation: 0,
                  ),
                  body: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          children: [
                            Container(
                                color: Colors.white,
                                width: double.infinity,
                                child: Image.asset(
                                  '${imagePath}Image 24.png',
                                  fit: BoxFit.contain,
                                )),
                            Positioned(
                              left: 0,
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                  color: colorContainer6,
                                ),
                                child: const Text(
                                  'خصم 20%',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: primarylightcolor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const Text(
                                  'قهوة الضيا ء بن تركي غامق',
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      '150 دينار',
                                      style: TextStyle(
                                          color: primarycolor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      '150 دينار',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        color: colortext3,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة ، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكننك',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black),
                                  maxLines: 2,
                                ),
                                buildRow('اسم الاضافة', 1),
                                buildRow('اسم الاضافة', 2),
                                buildRow('اسم الاضافة', 3),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _index = _index + 1;
                                    });
                                  },
                                  child: Image.asset(
                                      '${iconPath}icon-plus-square.png'),
                                ),
                                Text(
                                  '$_index',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _index = _index - 1;
                                    });
                                  },
                                  child: Image.asset(
                                      '${iconPath}icon-minus-square.png'),
                                ),
                                Container(
                                  width: 40.w,
                                  height: 5.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: primarycolor),
                                  child: Center(
                                    child: GestureDetector(
                                      child: Text(
                                        'تأكيد الطلب',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      onTap: () {
                                        _bottomSheet(context);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))));
  }

  Row buildRow(String text, int value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Radio(
              value: value,
              groupValue: _radioValue,
              onChanged: (value) {
                setState(() {
                  _radioValue = int.parse('$value');
                });
              },
              activeColor: primarycolor,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
        const Text(
          'دينار 5+',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

void _bottomSheet(ctx) {
  showModalBottomSheet(
      barrierColor: Colors.grey,
      backgroundColor: Colors.grey,
      context: ctx,
      builder: (BuildContext bx) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            backgroundColor: Colors.grey,
            body: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  color: Colors.white),
              child: Padding(
                padding: EdgeInsets.all(4.sp),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.cancel_presentation_sharp)),
                      ],
                    ),
                    Text(
                      'تاكيد الطلب',
                      style: TextStyle(
                          fontSize: 17.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'هل تزيد هذا الطلب بالفعل',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: const Color(0xAA96A2B5),
                      ),
                    ),
                    Card(
                      elevation: 6,
                      shadowColor: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset('${imagePath}Image 23.png'),
                            SizedBox(width: 3.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'قهوة الغامقه',
                                      style: TextStyle(
                                          color: colortext2, fontSize: 18.sp),
                                    ),
                                    SizedBox(width: 2.w),
                                    Text(
                                      '2×',
                                      style: TextStyle(
                                          color: const Color(0xAA0E1638),
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '300' ' ' 'دينار',
                                      style: TextStyle(
                                        color: primarycolor,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 2.w),
                                    Text(
                                      '150' ' ' ' دينار',
                                      style: TextStyle(
                                          color: const Color(0xAAB0BAC9),
                                          fontSize: 18.sp,
                                          //fontWeight: FontWeight.bold,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          decorationColor:
                                              const Color(0xAAB0BAC9),
                                          decorationThickness: 2),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 7.h,
                      color: const Color(0xAAE7EAF0),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            '${iconPath}icon_gift.png',
                            color: primarycolor,
                          ),
                          SizedBox(width: 2.w),
                          Text('متبقي 20 دينار علي طلبك و تحصل علي خصم 40%',
                              style: TextStyle(
                                  color: primarycolor, fontSize: 12.sp))
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Expanded(
                            child: CustomButtonView1(text: 'متابعة الطلب')),
                        Expanded(
                          child: SizedBox(
                            height: 65,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          side: const BorderSide(
                                              color: primarycolor, width: 2)))),
                              onPressed: () {},
                              child: const Center(
                                child: Text(
                                  'تصفح المزيد',
                                  style: TextStyle(color: primarycolor),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
