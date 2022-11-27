import 'package:aldiaa_project/view/base/custom_button_view_1.dart';
import 'package:aldiaa_project/view/screens/order_pages/payment_process_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/custom_color.dart';

class OrderProcessCompletedScreen extends StatefulWidget {
  const OrderProcessCompletedScreen({super.key});

  @override
  State<OrderProcessCompletedScreen> createState() =>
      _OrderProcessCompletedScreenState();
}

class _OrderProcessCompletedScreenState
    extends State<OrderProcessCompletedScreen> {
  int _radioValue = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Sizer(
            builder: ((context, orientation, deviceType) => Scaffold(
                backgroundColor: primarylightcolor,
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
                body: Column(children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    height: 120,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black, blurRadius: 5)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildColumn('icon_house.png', 'العنوان'),
                        buildColumn('icon_delivery_active.png', 'ديلفري'),
                        buildColumn('icon_payment.png', 'عملية الدفع'),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 140,
                            width: double.infinity,
                            color: primarylightcolor,
                            padding: const EdgeInsets.all(10),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'التوصيل الاعتيادي',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Text(
                                      ' الطلب سيصل في مده لا تقل عن 15',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          color: colortext3),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'يوم ٢٤ مايو ٢٠٢٠',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              color: colortext3),
                                        ),
                                        buildRow(1),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 130,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: primarylightcolor,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          'التوصيل المتميز',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '8' '  ' 'دينار ',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'الطلب سيصل في اليوم التالي ١٤ مايو ٢٠٢٠',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              color: colortext3),
                                        ),
                                        buildRow(2),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      CustomButtonView1(
                        text: 'التالي',
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (_) {
                            return const PaymentProcessScreen();
                          }));
                        },
                      ),
                    ],
                  ))
                ])))));
  }

  Radio buildRow(int value) {
    return Radio(
      value: value,
      groupValue: _radioValue,
      onChanged: (value) {
        setState(() {
          _radioValue = int.parse('$value');
        });
      },
      activeColor: primarycolor,
    );
  }
}

Column buildColumn(String image, String text) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Image.asset(iconPath + image),
      Text(
        text,
        style: const TextStyle(fontSize: 14),
      )
    ],
  );
}
