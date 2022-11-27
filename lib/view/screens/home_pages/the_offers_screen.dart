import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../helper/custom_color.dart';

class TheOffersScreen extends StatefulWidget {
  const TheOffersScreen({super.key});

  @override
  State<TheOffersScreen> createState() => _TheOffersScreenState();
}

class _TheOffersScreenState extends State<TheOffersScreen> {
  List select = [
    'trucky.png',
    'trucky.png',
    'trucky.png',
    'trucky.png',
    'trucky.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: primarylightcolor,
          appBar: AppBar(
            elevation: 1,
            shadowColor: Colors.white,
            centerTitle: true,
            backgroundColor: Colors.white,
            title: const Text(
              'المنتجات الأكثر رواجا',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(Icons.search_rounded, color: Colors.black),
              ),
            ],
          ),
          body: Column(
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 15, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('الكل',
                        style: TextStyle(
                          color: primarycolor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        )),
                    Text('قهوة تركي',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    Text('قهوة فرنساوي',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    Text('قهوة مروج',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    Text('قهوة مروج',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: select.length,
                    itemBuilder: (BuildContext context, int item) {
                      return InkWell(
                        onTap: () {},
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 4,
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                    ),
                                    child: Image.asset(
                                      imagePath + select[item],
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(15),
                                                bottomLeft: Radius.circular(15),
                                              ),
                                              color: Colors.white),
                                          child: const Icon(Icons.favorite)),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                bottomRight:
                                                    Radius.circular(15),
                                              ),
                                              color: colorContainer),
                                          child: const Text(
                                            '20%',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('1/2 كيلو قهوة تركي + عيش فينو',
                                        style: TextStyle(fontSize: 18)),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: const [
                                        Text('150 دينار',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(width: 10),
                                        Text(
                                          '120 دينار',
                                          style: TextStyle(
                                              fontSize: 18,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Color(0xFF96A2B5)),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
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
      );
    }));
  }
}
