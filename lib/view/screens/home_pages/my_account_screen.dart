import 'package:aldiaa_project/helper/custom_color.dart';
import 'package:aldiaa_project/view/screens/profile_pages/branches_of_aldiaa_screen.dart';
import 'package:aldiaa_project/view/screens/profile_pages/invite_a_friend_screen.dart';
import 'package:aldiaa_project/view/screens/profile_pages/my_favorites_list_screen.dart';
import 'package:aldiaa_project/view/screens/profile_pages/my_points_screen.dart';
import 'package:aldiaa_project/view/screens/profile_pages/my_profile_screen.dart';
import 'package:aldiaa_project/view/screens/profile_pages/technical_support_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  final List<Map<String, Object>> item = [
    {
      'image': '${iconPath}icon_motto.png',
      'text1': 'نقاطي الاضافيه',
      'text2': '2250 نقطة',
      'text3': 'النقاط التي حصلت عليها من المشاركه',
      'page': const MyPointScreen(),
    },
    {
      'image': '${iconPath}icon_heart2.png',
      'text1': 'قائمة مفضلاتي',
      'text2': '',
      'text3': 'المنتجات التي تم الاعجاب بها',
      'page': const MyFavoritesScreen(),
    },
    {
      'image': '${iconPath}icon_people.png',
      'text1': 'دعوة صديق',
      'text2': '',
      'text3': 'ادع الاصداقاء و العائله و حلص 200 نقطة',
      'page': const InviteAfriendScreen(),
    },
    {
      'image': '${iconPath}icon_location.png',
      'text1': 'فروع الضياء',
      'text2': '',
      'text3': 'جميع فروعنا داخل الدولة',
      'page': const BranchesOfAldiaa(),
    },
    {
      'image': '${iconPath}icon_setting.png',
      'text1': 'الدعم الفني',
      'text2': '',
      'text3': 'اعدادات الحساب الشخصي',
      'page': const TechnicalSupportScreen(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Sizer(
            builder: ((context, orientation, deviceType) => Scaffold(
                  appBar: AppBar(
                    automaticallyImplyLeading: false,
                    backgroundColor: primarycolor,
                    elevation: 0,
                    centerTitle: true,
                    title: const Text(
                      'حسابي الشخصي',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    actions: [
                      Padding(
                          padding: const EdgeInsets.all(10),
                          child: IconButton(
                            icon: const Icon(Icons.settings),
                            onPressed: () {
                              Get.to(const MyProfileScreen());
                            },
                          ))
                    ],
                  ),
                  body: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 30.h,
                            color: primarycolor,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(top: 5.h),
                              decoration: const BoxDecoration(
                                color: primarylightcolor,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25),
                                ),
                              ),
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
                                            elevation: 4,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.w,
                                                  vertical: 3.h),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Image.asset(item[index]
                                                              ['image']
                                                          .toString()),
                                                      SizedBox(width: 2.w),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                item[index][
                                                                        'text1']
                                                                    .toString(),
                                                                style: const TextStyle(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                              const SizedBox(
                                                                  width: 10),
                                                              Text(
                                                                item[index][
                                                                        'text2']
                                                                    .toString(),
                                                                style: const TextStyle(
                                                                    color:
                                                                        primarycolor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              )
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                              height: 10),
                                                          Text(
                                                            item[index]['text3']
                                                                .toString(),
                                                            style: const TextStyle(
                                                                color:
                                                                    colortext3),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(width: 3.w),
                                                  IconButton(
                                                    icon: const Icon(Icons
                                                        .arrow_forward_ios),
                                                    color: colortext3,
                                                    onPressed: () {
                                                      Get.to(
                                                          item[index]['page']);
                                                    },
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
                            EdgeInsets.only(top: 2.h, right: 130, left: 130),
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
