import 'package:aldiaa_project/helper/custom_color.dart';
import 'package:aldiaa_project/view/screens/home_pages/my_account_screen.dart';
import 'package:aldiaa_project/view/screens/home_pages/my_orders_screen.dart';
import 'package:aldiaa_project/view/screens/home_pages/the_main_page_screen.dart';
import 'package:aldiaa_project/view/screens/home_pages/the_offers_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, StatefulWidget>> _pages = [
    {'page': const MainPageScreen()},
    {'page': const TheOffersScreen()},
    {'page': const MyOrdersScreen()},
    {'page': const MyAccountScreen()},
  ];

  int _selectPageIndex = 0;
  void _selectpage(int value) {
    setState(() {
      _selectPageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: primarylightcolor,
        body: _pages[_selectPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: _selectPageIndex,
          onTap: _selectpage,
          selectedItemColor: primarycolor,
          unselectedItemColor: colortext1,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                ),
                label: 'الرئيسية'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'العروض'),
            BottomNavigationBarItem(
              icon: Icon(Icons.telegram),
              label: 'طلباتي',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'حسابي'),
          ],
        ),
      ),
    );
  }
}
