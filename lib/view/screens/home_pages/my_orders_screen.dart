import 'package:aldiaa_project/helper/custom_color.dart';
import 'package:aldiaa_project/view/screens/order_pages/current_orders_screen.dart';
import 'package:aldiaa_project/view/screens/home_pages/the_offers_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({super.key});

  @override
  State<MyOrdersScreen> createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return Directionality(
        textDirection: TextDirection.rtl,
        child: DefaultTabController(
            length: 2,
            child: Scaffold(
              backgroundColor: primarylightcolor,
              appBar: AppBar(
                elevation: 1,
                shadowColor: Colors.white,
                centerTitle: true,
                backgroundColor: Colors.white,
                title: const Text(
                  'الطلبات',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                actions: const [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child:
                        Icon(Icons.border_color_outlined, color: Colors.black),
                  ),
                ],
                bottom: const TabBar(
                  indicatorColor: primarycolor,
                  tabs: <Widget>[
                    Tab(text: 'الطلبات الحالية'),
                    Tab(text: 'الطلبات السابقة'),
                  ],
                ),
              ),
              body: const TabBarView(children: [
                CurrentOrdersScreen(),
                TheOffersScreen(),
              ]),
            )),
      );
    }));
  }
}
