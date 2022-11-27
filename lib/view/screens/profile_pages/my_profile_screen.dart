import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'package:aldiaa_project/view/screens/profile_pages/edit_phone_number_screen.dart';
import 'package:aldiaa_project/view/screens/profile_pages/edit_profile_screen.dart';

import '../../../helper/custom_color.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> item = [
      {
        'text1': 'تعديل البيانات الشخصية',
      },
      {
        'text1': 'تعديل رقم الجوال',
      },
    ];
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Sizer(
            builder: ((context, orientation, deviceType) => Scaffold(
                  appBar: AppBar(
                    toolbarHeight: 12.h,
                    backgroundColor: primarycolor,
                    elevation: 0,
                    centerTitle: true,
                    title: const Text(
                      'ملفي الشخصي',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),
                  body: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 27.h,
                            color: primarycolor,
                          ),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                color: primarylightcolor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                ),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 5.h),
                                  const Text(
                                    'أسامة محمد العيتيبي',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 20),
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
                                            margin: const EdgeInsets.all(10),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(25.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    item[index]['text1'] ?? '1',
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  IconButton(
                                                    icon: const Icon(Icons
                                                        .arrow_forward_ios),
                                                    onPressed: () {
                                                      setState(() {
                                                        Get.to(item[index]
                                                                    ['text1'] ==
                                                                'تعديل البيانات الشخصية'
                                                            ? const EditProfilScreen()
                                                            : const EditPhoneNumberScreen());
                                                      });
                                                    },
                                                    color: colortext3,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        }),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
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
                    ],
                  ),
                ))));
  }
}
