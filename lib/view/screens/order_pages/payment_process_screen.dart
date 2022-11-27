import 'package:aldiaa_project/view/screens/order_pages/order_details_sceen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/custom_color.dart';
import '../../base/custom_button_view_1.dart';

class PaymentProcessScreen extends StatefulWidget {
  const PaymentProcessScreen({super.key});

  @override
  State<PaymentProcessScreen> createState() => _PaymentProcessScreenState();
}

class _PaymentProcessScreenState extends State<PaymentProcessScreen> {
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
                body: SingleChildScrollView(
                  child: SizedBox(
                    height: 120.h,
                    child: Column(children: [
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
                            buildColumn('icon_delivery.png', 'ديلفري'),
                            buildColumn('icon_payment_fill.png', 'عملية الدفع'),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          ' الدفع عند التوصيل',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Text(
                                          'الدفع عند استلام الطلب في المنزل',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              color: colortext3),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            buildRow(0),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'الدفع الالكتروني',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Text(
                                          'الدفع عن طريق ماستر كارد او فيزا',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              color: colortext3),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            buildRow(1),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'الدفع الالكتروني عند التوصيل',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const Text(
                                          'الدفع عن طريق ماستر كارد او فيزا عند التوصيل',
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.normal,
                                              color: colortext3),
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            buildRow(2),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: double.infinity,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset('${iconPath}icon_saved.png'),
                                const Text(
                                  'تم حفظ العنوان',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                    width: 200,
                                    child: CustomButtonView1(
                                      text: 'التالي',
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(builder: (_) {
                                          return const OrderDetailsScreen();
                                        }));
                                      },
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ))
                    ]),
                  ),
                )))));
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
}
