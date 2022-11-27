import 'package:aldiaa_project/helper/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});
  static const routName = 'Notificatios_Screen';

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final List<Map<String, String>> item = [
    {
      'text1': 'تنبيه خالص من مدير التطبيق " يكتب هنا ',
      'text2': 'نصا واضح يدل علي التنبيه و " و',
      'bool': 'false'
    },
    {
      'image': '${iconPath}icon_save.png',
      'text1': 'اسم المتجر قام بإرسالك عرض علي ',
      'text2': ' منتج قهوة تركي ',
      'bool': 'false'
    },
    {
      'image': '${iconPath}icon_birthday.png',
      'text1': 'RUSH HOUR',
      'bool': 'true'
    },
    {
      'image': '${iconPath}icon_birthday.png',
      'text1': 'كل سنة و انت طيب , هدية جديدة مباسبة ',
      'text2': 'عيد ميلادة',
      'bool': 'true'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Sizer(
        builder: ((context, orientation, deviceType) => Scaffold(
              appBar: AppBar(
                elevation: 2,
                toolbarHeight: 80,
                centerTitle: true,
                title: const Text(
                  'الاشعارات',
                  style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(1, 67, 74, 81)),
                ),
                backgroundColor: Colors.white,
                leading: IconButton(
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).pop();
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
              ),
              backgroundColor: primarylightcolor,
              body: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: item.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 4,
                      margin: const EdgeInsets.all(15),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 68,
                              height: 68,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(color: primarycolor),
                                  color: item[index]['image'] == null
                                      ? primarycolor
                                      : Colors.greenAccent[100]),
                              child: item[index]['image'] == null
                                  ? Container()
                                  : Image.asset(
                                      item[index]['image'].toString()),
                            ),
                            //const SizedBox(width: 5),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item[index]['text1'] ?? '',
                                    style: TextStyle(
                                        color: item[index]['bool'].toString() ==
                                                'true'
                                            ? Colors.black
                                            : colortext3,
                                        fontWeight:
                                            item[index]['bool'].toString() ==
                                                    'true'
                                                ? FontWeight.bold
                                                : FontWeight.normal),
                                    //softWrap: true,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    item[index]['text2'] ?? '',
                                    style: TextStyle(
                                        color: item[index]['bool'].toString() ==
                                                'true'
                                            ? Colors.black
                                            : colortext3,
                                        fontWeight:
                                            item[index]['bool'].toString() ==
                                                    'true'
                                                ? FontWeight.bold
                                                : FontWeight.normal),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Image.asset(
                                          '${iconPath}icon_ic_clock.png'),
                                      const SizedBox(width: 10),
                                      const Text(
                                        'مساءً  10:30',
                                        style: TextStyle(color: colortext3),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            )),
      ),
    );
  }
}
