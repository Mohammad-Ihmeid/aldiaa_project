import 'package:aldiaa_project/view/base/custom_button_view_1.dart';
import 'package:aldiaa_project/view/screens/order_pages/continue_to_buy_screen.dart';
import 'package:flutter/material.dart';

import '../../../helper/custom_color.dart';

class CurrentOrdersScreen extends StatefulWidget {
  const CurrentOrdersScreen({super.key});

  @override
  State<CurrentOrdersScreen> createState() => _CurrentOrdersScreenState();
}

class _CurrentOrdersScreenState extends State<CurrentOrdersScreen> {
  int _count = 2;

  final List _select = [
    'Image 23.png',
    'Image 23.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: _select.length,
              itemBuilder: (BuildContext context, int item) {
                return InkWell(
                    onTap: () {},
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 4,
                      margin: const EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Image.asset(
                                imagePath + _select[item],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      'قهوة الغامقه',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: colortext2,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(width: 5),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Container(
                                          color: primarylightcolor,
                                          child: const Text(
                                            'x2',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                    const SizedBox(width: 85),
                                    const Text(
                                      'حذف',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.red),
                                    ),
                                    const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    )
                                  ],
                                ),
                                const Text(
                                  '+ اضافة حبهان + اضافة حبهان',
                                  style: TextStyle(
                                      fontSize: 14, color: colortext1),
                                  textAlign: TextAlign.right,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      '300' '  ' 'دينار ',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: primarycolor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(width: 85),
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _count = _count + 1;
                                          });
                                        },
                                        icon: Image.asset(
                                            '${iconPath}icon_plus.png')),
                                    Text('$_count',
                                        style: const TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _count = _count - 1;
                                          });
                                        },
                                        icon: Image.asset(
                                            '${iconPath}icon_minus.png')),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ));
              }),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'المبلغ الاجمالي',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: colortext2),
              ),
              Text(
                '1235' 'دينار',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: colortext2),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          color: colorContainer2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('${iconPath}icon_gift.png'),
              const Text(
                'متبقي 20 دينار علي طلبك و تحصل علي خصم 40%',
                style: TextStyle(fontSize: 16, color: Color(0xFFF2994A)),
              )
            ],
          ),
        ),
        CustomButtonView1(
          text: 'متابعة الشراء',
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_) {
              return const ContinueToBuyScreen();
            }));
          },
        )
      ],
    );
  }
}
