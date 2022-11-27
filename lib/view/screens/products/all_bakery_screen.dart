import 'package:aldiaa_project/view/screens/products/items_data_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:aldiaa_project/helper/custom_color.dart';

class AllBakeryScreen extends StatefulWidget {
  final int id;
  const AllBakeryScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  State<AllBakeryScreen> createState() => _AllBakeryScreenState();
}

class _AllBakeryScreenState extends State<AllBakeryScreen> {
  final Color _heartRed = Colors.redAccent;
  final Color _heartWhite = Colors.white;

  Set<String> savedId = <String>{};

  List<String> image = ['Image 23.png', 'Image 20.png'];
  List<String> text = ['قهوة الغامقه', 'خبز فينو'];

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Sizer(
            builder: ((context, orientation, deviceType) => Scaffold(
                  backgroundColor: primarylightcolor,
                  body: SizedBox(
                    height: 120.h,
                    child: GridView(
                      physics: const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 250,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1,
                      ),
                      children: customBakery.map(
                        (catdata) {
                          bool isSaved = savedId.contains(catdata.id);

                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (_) {
                                  return const ItemsDataScreen();
                                }));
                              });
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            bottomLeft: Radius.circular(15),
                                          ),
                                          color: isSaved
                                              ? colorContainer3
                                              : colorContainer4,
                                        ),
                                        child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                if (isSaved) {
                                                  savedId.remove(catdata.id);
                                                } else {
                                                  savedId.add(catdata.id);
                                                }
                                              });
                                            },
                                            icon: Icon(
                                              isSaved
                                                  ? Icons.favorite
                                                  : Icons.favorite_border,
                                              color: isSaved
                                                  ? _heartRed
                                                  : _heartWhite,
                                            )),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.all(14),
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(15),
                                            bottomRight: Radius.circular(15),
                                          ),
                                          color: colorContainer3,
                                        ),
                                        child: const Text(
                                          '20%',
                                          style: TextStyle(
                                              color: colorContainer,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Center(
                                      child: Image.asset(
                                          imagePath + image[widget.id])),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Row(
                                      children: [
                                        Text(
                                          text[widget.id],
                                          style: const TextStyle(
                                              color: colortext2, fontSize: 18),
                                        ),
                                        const SizedBox(width: 5),
                                        widget.id == 0
                                            ? const Text(
                                                '250 جرام',
                                                style: TextStyle(
                                                    color: Color(0x8096A2B5),
                                                    fontSize: 14),
                                              )
                                            : Container()
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10, bottom: 0),
                                    child: Row(
                                      children: const [
                                        Text(
                                          '15' ' ' 'دينار',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: colortext2),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          '12' ' ' 'دينار',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0x8096A2B5),
                                              decoration:
                                                  TextDecoration.lineThrough),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ).toList(),
                    ),
                  ),
                ))));
  }
}
