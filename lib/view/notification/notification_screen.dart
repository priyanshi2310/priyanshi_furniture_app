import 'package:flutter/material.dart';
import 'package:priyanshi_furniture_app/res/common/comman_text.dart';

import 'package:priyanshi_furniture_app/res/constant/app_color.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<String> images = [
    "images/Mask Group (8).png",
    "images/Media (27).png",
    "images/Media (24).png",
    "images/Media (25).png",
    "images/Media (26).png",
  ];

  List<String> text1 = [
    "Your order #123456789 has been shipped successfully",
    "Your order #123456789 has been shipped",
    "Your order #123456789 has been confirmed",
    "Discover hot sale furnitures this week.",
    "Your order #123456789 has been canceled",
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: CommanText(
          text: 'Notification',
          weight: 0.016 * height,
          fontWeight: FontWeight.bold,
          color: AppColor.blackcolor,
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            SizedBox(
              height: 0.800 * height,
              child: ListView.separated(
                itemCount: images.length,
                itemBuilder: ((context, index) {
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 0.120 * height,
                          width: 0.250 * width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  text1[index],
                                  style: TextStyle(
                                    fontSize: 0.016 * height,
                                    fontWeight: FontWeight.w600,
                                    color: AppColor.blackcolor,
                                  ),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                              style: TextStyle(
                                                  fontSize: 0.014 * height,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColor.greycolor),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (index == 0 || index == 1)
                                      Text(
                                        'New',
                                        style: TextStyle(
                                          fontSize: 0.014 * height,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff27AE60),
                                        ),
                                      ),
                                    if (index == 2 || index == 3)
                                      Text(
                                        'Hot',
                                        style: TextStyle(
                                          fontSize: 0.014 * height,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xffEB5757),
                                        ),
                                      ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    indent: 8,
                    endIndent: 8,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
