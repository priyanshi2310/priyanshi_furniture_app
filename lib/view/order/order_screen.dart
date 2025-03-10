import 'package:flutter/material.dart';

import 'package:priyanshi_furniture_app/res/common/comman_text.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  int selectcolor = 0;
  List<String> text1 = ["Canceled", "Processing", "Delivered"];

  List<Color> colors = [Colors.red, Colors.yellow, Colors.green];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: InkWell(
              onTap: () {
                Navigator.pop(context, 'ProfileScreen');
              },
              child: Icon(
                Icons.arrow_back_ios,
                size: 0.018 * height,
              ),
            ),
          ),
          title: CommanText(
            text: "My orders",
            weight: 0.016 * height,
            color: AppColor.blackcolor,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: Column(
          children: [
            TabBar(
              onTap: (int index) {
                setState(() {
                  selectcolor = index; // Correct assignment
                });
              },
              indicatorColor: AppColor.blackcolor,
              indicatorWeight: 4,
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(width: 4.0),
                insets: EdgeInsets.symmetric(horizontal: 15.0),
              ),
              tabs: [
                Tab(
                  child: CommanText(
                    text: 'Delivered',
                    color: selectcolor == 0
                        ? Colors.black
                        : AppColor
                            .greycolor, 
                    weight: 0.018 * height,
                  ),
                ),
                Tab(
                  child: CommanText(
                    text: 'Processing',
                    color: selectcolor == 1
                        ? Colors.black
                        : AppColor
                            .greycolor, 
                    weight: 0.018 * height,
                  ),
                ),
                Tab(
                  child: CommanText(
                    text: 'Canceled',
                    color: selectcolor == 2
                        ? Colors.black
                        : AppColor
                            .greycolor, 
                    weight: 0.018 * height,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.022 * height,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      height: 0.210 * height,
                      width: 0.335 * width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColor.primaryColor,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: CommanText(
                                  text: 'Order No238562312',
                                  weight: 0.016 * height,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.blackcolor,
                                ),
                              ),
                              CommanText(
                                text: '20/03/2020',
                                weight: 0.014 * height,
                                fontWeight: FontWeight.w400,
                                color: AppColor.greycolor,
                              )
                            ],
                          ),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "03",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 0.016 * height,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.blackcolor,
                                      ),
                                    ),
                                  ],
                                  text: "Quantity:",
                                  style: TextStyle(
                                    fontSize: 0.016 * height,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.greycolor,
                                  ),
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: " \$150",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 0.016 * height,
                                        fontWeight: FontWeight.w600,
                                        color: AppColor.blackcolor,
                                      ),
                                    ),
                                  ],
                                  text: "Total Amount:",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 0.016 * height,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.greycolor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0.032 * height,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0XFF242424),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                onPressed: () {},
                                child: SizedBox(
                                  height: 0.036 * height,
                                  width: 0.078 * width,
                                  child: Center(
                                    child: CommanText(
                                      text: "Detail",
                                      weight: 0.012 * height,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.primaryColor,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 0.330 * width,
                              ),
                              if (index == 1)
                                const Icon(
                                  Icons.schedule_outlined,
                                  size: 20,
                                ),
                              CommanText(
                                text: text1[index],
                                color: colors[index],
                                weight: 0.016 * height,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
