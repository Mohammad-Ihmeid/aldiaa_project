import 'package:aldiaa_project/controller/custom_bakery.dart';
import 'package:aldiaa_project/controller/custom_category.dart';
import 'package:flutter/material.dart';

//Color
const Color primarycolor = Color(0xFF84B92F);
const Color primarylightcolor = Color(0xFFF6F6FA);
const Color colortext = Color(0xFF96A2B5);
const Color colortext1 = Color(0xFF434A51); //#434A51
const Color colortext2 = Color(0xFF515C6F);
const Color colortext3 = Color(0xFFAAB5BC); //#AAB5BC
const Color colorContainer = Color(0xFFFF7272);
const Color colorContainer2 = Color(0x1AF2994A);
const Color colorContainer3 = Color(0x1AFF7272);
const Color colorContainer4 = Color(0x1A96A2B5); //#96A2B5
const Color colorContainer5 = Color(0x4CAC8C29);
const Color colorContainer6 = Color.fromARGB(150, 255, 114, 114);
const Color colorborder = Color(0xFFD9DFE7);

String imagePath = 'assets/images/';
String iconPath = 'assets/icon/';

List<Category> categories = [
  Category(
    id: '0',
    title: 'قهوة و مشروبات',
    suptitle: '35 صنف',
    image: 'image584.png',
  ),
  Category(
    id: '0',
    title: 'قهوة و مشروبات',
    suptitle: '35 صنف',
    image: 'image584.png',
  ),
  Category(
    id: '1',
    title: 'مخبوزات',
    suptitle: '35 صنف',
    image: 'image5841.png',
  ),
  Category(
    id: '1',
    title: 'مخبوزات',
    suptitle: '35 صنف',
    image: 'image5841.png',
  ),
];

const List<Bakery> customBakery = [
  Bakery(id: '0', image: 'Image 20.png'),
  Bakery(id: '1', image: 'Image 20.png'),
  Bakery(id: '2', image: 'Image 20.png'),
  Bakery(id: '3', image: 'Image 20.png'),
  Bakery(id: '4', image: 'Image 20.png'),
  Bakery(id: '5', image: 'Image 20.png'),
  Bakery(id: '6', image: 'Image 20.png'),
  Bakery(id: '7', image: 'Image 20.png'),
  Bakery(id: '8', image: 'Image 20.png'),
  Bakery(id: '9', image: 'Image 20.png'),
  Bakery(id: '10', image: 'Image 20.png'),
  Bakery(id: '11', image: 'Image 20.png'),
  Bakery(id: '12', image: 'Image 20.png'),
];
