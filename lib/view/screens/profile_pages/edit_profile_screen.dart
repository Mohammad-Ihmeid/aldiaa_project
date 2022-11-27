import 'package:aldiaa_project/view/base/custom_button_view_1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/custom_color.dart';

class EditProfilScreen extends StatefulWidget {
  const EditProfilScreen({super.key});

  @override
  State<EditProfilScreen> createState() => _EditProfilScreenState();
}

class _EditProfilScreenState extends State<EditProfilScreen> {
  final List<Map<String, String>> item = [
    {
      'image': '${iconPath}icon_user_name.png',
      'text1': 'اسم المستخدم',
      'text2': 'السيد إبراهيم السيد المحمدي'
    },
    {
      'image': '${iconPath}icon_email_active.png',
      'text1': 'البريد الالكتروني',
      'text2': 'sayedelmohamady@gmail.com'
    },
    {
      'image': '${iconPath}icon_calender_active.png',
      'text1': 'تاريخ الميلاد',
      'text2': '01 / 01 / 1996'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Sizer(
            builder: ((context, orientation, deviceType) => Scaffold(
                  backgroundColor: primarylightcolor,
                  appBar: AppBar(
                    toolbarHeight: 15.h,
                    backgroundColor: primarylightcolor,
                    elevation: 0,
                    centerTitle: true,
                    title: const Text(
                      'ملفي الشخصي',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    leading: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 22,
                      ),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),
                  body: Container(
                    padding: EdgeInsets.only(top: 1.h),
                    child: Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(top: 1.h, right: 130, left: 130),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              '${imagePath}images.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                'أسامة محمد العيتيبي',
                                style: TextStyle(
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 2.h),
                              Expanded(
                                child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: item.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Card(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        elevation: 1,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 3.w, vertical: 1.h),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 3.w, vertical: 1.h),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 50,
                                                height: 50,
                                                child: Image.asset(
                                                  item[index]['image']
                                                      .toString(),
                                                  color: primarycolor,
                                                ),
                                              ),
                                              const SizedBox(width: 20),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    item[index]['text1'] ?? '1',
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(height: 10),
                                                  Text(
                                                    item[index]['text2'] ?? '1',
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: colortext3),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                              const CustomButtonView1(text: 'تحديث')
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}
