import 'package:flutter/material.dart';

import '../../../helper/custom_color.dart';
import 'bakery_screen.dart';

class TestScreen extends StatelessWidget {
  final String id;

  final String title;

  final String image;

  final String subtitle;

  const TestScreen({
    Key? key,
    required this.id,
    required this.title,
    required this.image,
    required this.subtitle,
  }) : super(key: key);

  void _selectPages(BuildContext ctx) {
    //Get.arguments(ctx);
    Navigator.of(ctx).pushNamed(BakeryScreen.routeName, arguments: {
      'id': id,
      'title': title,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          splashColor: Colors.red,
          onTap: () => _selectPages(context),
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                imagePath + image,
                fit: BoxFit.fitWidth,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ),
          ]),
        )
      ],
    );
  }
}
