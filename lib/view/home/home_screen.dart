import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:priyanshi_furniture_app/res/common/comman_text.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectcolor = 0;
  List<String> images = [
    "images/Media (15).png",
    "images/Media (2).jpg",
    "images/Media (17).png",
    "images/Media (18).png",
  ];
  List<String> text1 = [
    "Black Simple Lamp",
    "Minimal Stand",
    "Coffee Chair",
    "Simple Desk",
  ];
  List<String> text2 = ["\$12.00", "\$25.00", "\$12.00", "\$12.00"];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 25),
              child: Icon(Icons.shopping_cart_outlined),
            ),
          ],
          title: Column(
            children: [
              CommanText(
                text: 'MAKE HOME',
                fontWeight: FontWeight.w400,
                weight: 0.014 * height,
                color: AppColor.greycolor,
              ),
              CommanText(
                text: 'BEAUTIFUL',
                fontWeight: FontWeight.w700,
                weight: 0.018 * height,
                color: AppColor.greycolor,
              ),
            ],
          ),
          leading: Icon(
            Icons.search_outlined,
            color: AppColor.greycolor,
            size: 0.030 * height,
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 0.110 * height,
              child: TabBar(
                onTap: (int value) {
                  setState(() {
                    log(value.toString());
                    selectcolor = value;
                  });
                },
                indicator: const BoxDecoration(),
                tabs: [
                  Tab(
                    height: 0.080 * height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 0.054 * height,
                          width: 0.154 * width,
                          decoration: BoxDecoration(
                            color:
                                selectcolor == 0
                                    ? Colors.black
                                    : const Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.star,
                            color:
                                selectcolor == 0
                                    ? Colors.white
                                    : AppColor.greycolor,
                          ),
                        ),
                        CommanText(
                          text: "Popular",
                          color:
                              selectcolor == 0
                                  ? Colors.black
                                  : AppColor.greycolor,
                          weight: 0.010 * height,
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    height: 0.080 * height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 0.054 * height,
                          width: 0.154 * width,
                          decoration: BoxDecoration(
                            color:
                                selectcolor == 1
                                    ? Colors.black
                                    : const Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.chair_alt_outlined,
                            color:
                                selectcolor == 1
                                    ? Colors.white
                                    : AppColor.greycolor,
                          ),
                        ),
                        CommanText(
                          text: "Chair",
                          color:
                              selectcolor == 1
                                  ? Colors.black
                                  : AppColor.greycolor,
                          weight: 0.010 * height,
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    height: 0.080 * height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 0.054 * height,
                          width: 0.154 * width,
                          decoration: BoxDecoration(
                            color:
                                selectcolor == 2
                                    ? Colors.black
                                    : const Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.table_restaurant_outlined,
                            color:
                                selectcolor == 2
                                    ? Colors.white
                                    : AppColor.greycolor,
                          ),
                        ),
                        CommanText(
                          text: "Table",
                          color:
                              selectcolor == 2
                                  ? Colors.black
                                  : AppColor.greycolor,
                          weight: 0.010 * height,
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    height: 0.080 * height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 0.054 * height,
                          width: 0.154 * width,
                          decoration: BoxDecoration(
                            color:
                                selectcolor == 3
                                    ? Colors.black
                                    : const Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.chair_outlined,
                            color:
                                selectcolor == 3
                                    ? Colors.white
                                    : AppColor.greycolor,
                          ),
                        ),
                        CommanText(
                          text: "Armchiar",
                          color:
                              selectcolor == 3
                                  ? Colors.black
                                  : AppColor.greycolor,
                          weight: 0.010 * height,
                        ),
                      ],
                    ),
                  ),
                  Tab(
                    height: 0.080 * height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 0.054 * height,
                          width: 0.154 * width,
                          decoration: BoxDecoration(
                            color:
                                selectcolor == 4
                                    ? Colors.black
                                    : const Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.bed_outlined,
                            color:
                                selectcolor == 4
                                    ? Colors.white
                                    : AppColor.greycolor,
                          ),
                        ),
                        CommanText(
                          text: "Bed",
                          color:
                              selectcolor == 4
                                  ? Colors.black
                                  : AppColor.greycolor,
                          weight: 0.010 * height,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 0.35 * height,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(9),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, 'ProductScreen');
                                },
                                child: Container(
                                  height: 0.256 * height,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(images[index]),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(
                                          right: 10,
                                          bottom: 10,
                                        ),
                                        height: 0.05 * height,
                                        width: 0.10 * width,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            4,
                                          ),
                                          color: const Color(0xffE0E0E0),
                                        ),
                                        child: const Icon(Icons.shopping_bag),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CommanText(
                                text: text1[index],
                                weight: 0.014 * height,
                                fontWeight: FontWeight.w400,
                                color: AppColor.greycolor,
                              ),
                              CommanText(
                                text: text2[index],
                                weight: 0.014 * height,
                                fontWeight: FontWeight.bold,
                                color: AppColor.blackcolor,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const Text("data"),
                  const Text("data"),
                  const Text("data"),
                  const Text("data"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
