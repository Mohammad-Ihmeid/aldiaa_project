import 'package:aldiaa_project/helper/custom_color.dart';
import 'package:aldiaa_project/view/screens/products/all_bakery_screen.dart';
import 'package:aldiaa_project/view/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sizer/sizer.dart';

class BakeryScreen extends StatefulWidget {
  static const routeName = 'Bakery_Screen';
  const BakeryScreen({super.key});

  @override
  State<BakeryScreen> createState() => _BakeryScreenState();
}

class _BakeryScreenState extends State<BakeryScreen>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 5,
      vsync: this,
    );
  }

  List<String> list1 = ['الكل', 'خبز فينو', 'فطار', 'فطار', 'فطار'];

  List<String> list2 = [
    'الكل',
    'قهوة تركي',
    'قهوة فرنساوي',
    'قهوة مروج',
    'قهوة مروج'
  ];

  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, Object>;
    final pageId = routeArg['id'];
    final pageTitle = routeArg['title'];
    final pageid2 = int.parse(pageId.toString());

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Sizer(
        builder: ((context, orientation, deviceType) => DefaultTabController(
              length: 5,
              child: Scaffold(
                appBar: AppBar(
                  leading: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      )),
                  centerTitle: true,
                  elevation: 1,
                  backgroundColor: Colors.white,
                  title: Text(
                    pageTitle.toString(),
                    style: const TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFAAB5BC),
                    ),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                      color: Colors.black,
                    )
                  ],
                  bottom: TabBar(
                      isScrollable: true,
                      labelColor: primarycolor,
                      unselectedLabelColor: Colors.grey,
                      controller: tabController,
                      indicatorColor: primarycolor,
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            pageid2 != 0 ? list1[0] : list2[0],
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                        Text(
                          pageid2 != 0 ? list1[1] : list2[1],
                          style: const TextStyle(fontSize: 14),
                        ),
                        Text(
                          pageid2 != 0 ? list1[2] : list2[2],
                          style: const TextStyle(fontSize: 14),
                        ),
                        Text(
                          pageid2 != 0 ? list1[3] : list2[3],
                          style: const TextStyle(fontSize: 14),
                        ),
                        Text(
                          pageid2 != 0 ? list1[4] : list2[4],
                          style: const TextStyle(fontSize: 14),
                        ),
                      ]),
                ),
                body: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      AllBakeryScreen(id: pageid2),
                      AllBakeryScreen(id: pageid2),
                      AllBakeryScreen(id: pageid2),
                      AllBakeryScreen(id: pageid2),
                      AllBakeryScreen(id: pageid2),
                    ]),
              ),
            )),
      ),
    );
  }
}
