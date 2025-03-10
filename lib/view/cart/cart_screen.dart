import 'package:flutter/material.dart';

import 'package:priyanshi_furniture_app/res/common/comman_text.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<String> images = [
    "images/Media (20).png",
    "images/Media (17).png",
    "images/Mask Group (7).png",
    "images/Mask Group (8).png",
  ];
  int number = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: InkWell(
            onTap: () {
              Navigator.pop(context, 'FavoriteScreen');
            },
            child: Icon(Icons.arrow_back_ios, size: 0.020 * height),
          ),
        ),
        title: CommanText(
          text: "My cart",
          weight: 0.016 * height,
          color: AppColor.blackcolor,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(images[index], fit: BoxFit.fill),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CommanText(
                                    text: "Minimal Stand",
                                    weight: 0.014 * height,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.greycolor,
                                  ),
                                  const Icon(Icons.cancel_outlined),
                                ],
                              ),
                              SizedBox(height: 0.005 * height),
                              CommanText(
                                text: "\$25.00",
                                weight: 0.016 * height,
                                fontWeight: FontWeight.w600,
                                color: AppColor.blackcolor,
                              ),
                              SizedBox(height: 0.020 * height),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        number++;
                                      });
                                    },
                                    child: Container(
                                      height: 0.040 * height,
                                      width: 0.080 * width,
                                      decoration: BoxDecoration(
                                        color: AppColor.whitecolor,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        size: 0.024 * height,
                                        color: AppColor.blackcolor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 0.012 * height),
                                  Text(number.toString()),
                                  SizedBox(width: 0.020 * width),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        number--;
                                      });
                                    },
                                    child: Container(
                                      height: 0.040 * height,
                                      width: 0.080 * width,
                                      decoration: BoxDecoration(
                                        color: AppColor.whitecolor,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Icon(
                                        Icons.remove,
                                        size: 0.024 * height,
                                        color: AppColor.blackcolor,
                                      ),
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
                return const Divider(indent: 8, endIndent: 8);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 19),
                      child: CommanText(
                        text: 'Enter your promo code',
                        weight: 0.016 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.greycolor,
                      ),
                    ),
                    Container(
                      height: 0.050 * height,
                      width: 0.104 * width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.blackcolor,
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 0.020 * height,
                        color: AppColor.primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0.020 * height),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommanText1(
                      text: 'Total:',
                      weight: 0.020 * height,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff808080),
                    ),
                    CommanText1(
                      text: '\$ 95.00',
                      weight: 0.020 * height,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff303030),
                    ),
                  ],
                ),
                SizedBox(height: 0.020 * height),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'CheckOutScreen');
                  },
                  child: Container(
                    height: 0.056 * height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColor.blackcolor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: CommanText(
                        text: "Check out    ",
                        color: AppColor.primaryColor,
                        weight: 0.016 * height,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 0.044 * height),
        ],
      ),
    );
  }
}
