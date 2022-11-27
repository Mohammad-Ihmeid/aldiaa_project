import 'package:aldiaa_project/view/base/custom_button_view_1.dart';
import 'package:aldiaa_project/view/screens/order_pages/order_process_completed_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/custom_color.dart';

class ContinueToBuyScreen extends StatelessWidget {
  const ContinueToBuyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Sizer(
            builder: ((context, orientation, deviceType) => Scaffold(
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
                    child: SizedBox(
                      height: 120.h,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            height: 120,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(color: Colors.black)]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                buildColumn(
                                    'icon_location_active.png', 'العنوان'),
                                buildColumn('icon_delivery.png', 'ديلفري'),
                                buildColumn('icon_payment.png', 'عملية الدفع'),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(10),
                              color: primarylightcolor,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildContainer('اسم الشارع الاول'),
                                  buildContainer('اسم الشارع الثانوي'),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'المدينه',
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.right,
                                        ),
                                        TextFormField(
                                          enableInteractiveSelection: false,
                                          showCursor: false,
                                          textAlign: TextAlign.right,
                                          decoration: const InputDecoration(
                                            hintText: 'المدينه',
                                            hintStyle: TextStyle(
                                                color: colortext, fontSize: 14),
                                            contentPadding: EdgeInsets.zero,
                                            enabledBorder: InputBorder.none,
                                          ),
                                          textInputAction: TextInputAction.next,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                          child: buildContainer('رقم المبني')),
                                      const SizedBox(width: 10),
                                      Expanded(
                                          child: buildContainer('رقم الدور')),
                                    ],
                                  ),
                                  const Text(
                                    'عناوين محفوظه',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: const [
                                            Text(
                                              'عنوان المنزل',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.right,
                                            ),
                                            Icon(
                                              Icons.book,
                                              color: colortext3,
                                            )
                                          ],
                                        ),
                                        TextFormField(
                                          showCursor: false,
                                          decoration: InputDecoration(
                                            suffixIcon: Image.asset(
                                                '${iconPath}icon_Radio_Button.png'),
                                            labelText:
                                                '15 شارع الملك الاردن عمان',
                                            hintStyle: const TextStyle(
                                                color: colortext, fontSize: 14),
                                            contentPadding: EdgeInsets.zero,
                                            enabledBorder: InputBorder.none,
                                          ),
                                          textInputAction: TextInputAction.next,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    width: double.infinity,
                                    color: Colors.white,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                            '${iconPath}icon_saved.png'),
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
                                                    MaterialPageRoute(
                                                        builder: (_) {
                                                  return const OrderProcessCompletedScreen();
                                                }));
                                              },
                                            ))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ))));
  }

  Container buildContainer(String text) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ),
          TextFormField(
            enableInteractiveSelection: false,
            showCursor: false,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
              hintText: text,
              hintStyle: const TextStyle(color: colortext, fontSize: 14),
              contentPadding: EdgeInsets.zero,
              enabledBorder: InputBorder.none,
            ),
            textInputAction: TextInputAction.next,
          ),
        ],
      ),
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
