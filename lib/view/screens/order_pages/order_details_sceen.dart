import 'package:aldiaa_project/helper/custom_color.dart';
import 'package:aldiaa_project/view/base/custom_button_view_1.dart';
import 'package:aldiaa_project/view/screens/order_pages/confirmation_screen.dart';
import 'package:aldiaa_project/view/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Sizer(
            builder: ((context, orientation, deviceType) => Scaffold(
                  backgroundColor: Colors.white,
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    centerTitle: true,
                    elevation: 1,
                    leading: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.black,
                    ),
                    title: const Text(
                      'الطلبات',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  body: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Container(
                      height: 120.h,
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SingleChildScrollView(
                            child: SizedBox(
                              height: 500,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'تفاصيل الطلب',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 25,
                                        height: 25,
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                style: BorderStyle.solid,
                                                color: colortext3)),
                                        child: const Center(
                                          child: Text(
                                            '2',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        '×',
                                        style: TextStyle(
                                            fontSize: 20, color: colortext3),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text(
                                            'قهوة الغامقه',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '+ اضافة حبهان + اضافة حبهان',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.normal),
                                          ),
                                          Text(
                                            'جرام 200',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.normal,
                                                color: colortext3),
                                          ),
                                        ],
                                      ),
                                      const Text(
                                        '300' ' ' 'دينار ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: primarycolor,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 190,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 25,
                                              height: 25,
                                              padding: const EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      style: BorderStyle.solid,
                                                      color: colortext3)),
                                              child: const Center(
                                                child: Text(
                                                  '2',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            const Text(
                                              '×',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: colortext3),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: const [
                                                Text(
                                                  'قهوة الغامقه',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  'جرام 200',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      color: colortext3),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        '300' ' ' 'دينار ',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: primarycolor,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  const Divider(
                                    color: colortext3,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        height: 100,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'سعر الطلب',
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            Text(
                                              'سعر التوصيل',
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            Text(
                                              'خصم',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: colorContainer),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: const [
                                            Text(
                                              '600' ' ' 'دينار',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'مجانا',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              '-100' '  ' 'دينار',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: colorContainer,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Text(
                                        'المبلغ الاجمالي',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: colortext3),
                                      ),
                                      Text(
                                        '500' '  ' 'دينار',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: colortext3),
                                      ),
                                    ],
                                  ),
                                  const Divider(
                                    color: colortext3,
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'تفاصيل العنوان',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Text(
                                              '21 الاردن ، عمان. شارع الملك',
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            Text(
                                              'تغيير',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: primarycolor),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'وسيلة الدفع',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: const [
                                            Text(
                                              '4543 **** **** **** ',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'تغيير',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: primarycolor),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: CustomButtonView1(
                                text: 'تاكيد',
                                onPressed: () {
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (_) {
                                    return const ConfirmationScreen();
                                  }));
                                },
                              )),
                              Expanded(
                                child: SizedBox(
                                  height: 65,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          side: const BorderSide(
                                            color: primarycolor,
                                            width: 2,
                                          ),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(builder: (_) {
                                        return const HomeScreen();
                                      }));
                                    },
                                    child: const Center(
                                      child: Text(
                                        'تراجع',
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
                ))));
  }
}
