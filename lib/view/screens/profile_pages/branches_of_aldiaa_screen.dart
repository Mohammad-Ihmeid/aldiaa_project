import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/custom_color.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class BranchesOfAldiaa extends StatefulWidget {
  const BranchesOfAldiaa({super.key});

  @override
  State<BranchesOfAldiaa> createState() => _BranchesOfAldiaaState();
}

class _BranchesOfAldiaaState extends State<BranchesOfAldiaa> {
  String dropdownValue = list.first;
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
                      height: MediaQuery.of(context).size.height / 2.5,
                      color: primarycolor,
                      child: Image.asset(
                        '${imagePath}logo.png',
                        alignment: Alignment.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 300),
                      child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            color: primarylightcolor,
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 5.h),
                              Text(
                                'فروع الضياء',
                                style: TextStyle(
                                    fontSize: 26.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'جميع فروعنا داخل الدولة',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: const Color(0xAA96A2B5),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              buildDropMenu('فروع عمان'),
                              buildDropMenu('فروع اربد'),
                              buildDropMenu('فروع العقبة'),
                            ],
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

  Padding buildDropMenu(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 17.sp, color: colortext1),
            ),
          ),
          DropdownButton(
            icon: const Icon(Icons.arrow_circle_down),
            itemHeight: 10.h,
            //isExpanded: true,
            elevation: 1,
            items: list.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                alignment: AlignmentDirectional.bottomEnd,
                value: value,
                child: Card(
                  //color: primarycolor,
                  child: Row(
                    children: [
                      Image.asset('${iconPath}icon_location.png'),
                      Column(
                        children: [
                          Text(
                            'فرع عمان',
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'الاردن ، عمان شارع ٢٣ الملك',
                            style:
                                TextStyle(fontSize: 14.sp, color: colortext3),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
            //value: dropdownValue,
            onChanged: (String? value) {
              // This is called when the user selects an item.
              setState(() {
                dropdownValue = value!;
              });
            },
            //isExpanded: true,
          )
        ],
      ),
    );
  }
}
