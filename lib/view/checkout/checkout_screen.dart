import 'package:flutter/material.dart';

import 'package:priyanshi_furniture_app/res/common/comman_text.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
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
              Navigator.pop(context, 'CartScreen');
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 0.020 * height,
            ),
          ),
        ),
        title: CommanText(
          text: "Check out",
          weight: 0.016 * height,
          color: AppColor.blackcolor,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommanText1(
                  text: 'Shipping address',
                  weight: 0.018 * height,
                  fontWeight: FontWeight.bold,
                  color: AppColor.greycolor,
                ),
                const Icon(Icons.border_color_outlined)
              ],
            ),
            SizedBox(
              height: 0.016 * height,
            ),
            Container(
              height: 0.135 * height,
              width: 0.935 * width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommanText(
                      text: 'Bruno Fernandes',
                      weight: 0.018 * height,
                      fontWeight: FontWeight.bold,
                      color: AppColor.blackcolor,
                    ),
                    const Divider(),
                    CommanText(
                      text:
                          '25 rue Robert Latouche, Nice,06200,Côte D’azur, France',
                      weight: 0.014 * height,
                      fontWeight: FontWeight.w400,
                      color: AppColor.greycolor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 0.020 * height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommanText1(
                  text: 'Payment',
                  weight: 0.018 * height,
                  fontWeight: FontWeight.w400,
                  color: AppColor.greycolor,
                ),
                const Icon(Icons.border_color_outlined)
              ],
            ),
            SizedBox(
              height: 0.012 * height,
            ),
            Container(
              height: 0.075 * height,
              width: 0.935 * width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffFFFFFF),
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 36, top: 15, bottom: 15),
                height: 0.064 * height,
                width: 0.032 * width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor.primaryColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('images/mastercard (1).png'),
                    SizedBox(
                      width: 0.060 * width,
                    ),
                    CommanText(
                      text: '**** **** **** 3947',
                      weight: 0.014 * height,
                      fontWeight: FontWeight.w600,
                      color: AppColor.blackcolor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 0.026 * height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommanText1(
                  text: 'Delivery method',
                  weight: 0.018 * height,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff909191),
                ),
                const Icon(Icons.border_color_outlined)
              ],
            ),
            SizedBox(
              height: 0.014 * height,
            ),
            Container(
              height: 0.075 * height,
              width: 0.935 * width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffFFFFFF),
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 21, top: 15, bottom: 15),
                height: 0.064 * height,
                width: 0.032 * width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor.primaryColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: 0.022 * height,
                        width: 0.200 * width,
                        child: Image.asset('images/Logo.png')),
                    SizedBox(
                      width: 0.020 * width,
                    ),
                    CommanText(
                      text: 'Fast (2-3days)',
                      weight: 0.014 * height,
                      fontWeight: FontWeight.w600,
                      color: AppColor.blackcolor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 0.014 * height,
            ),
            Container(
              height: 0.134 * height,
              width: 0.935 * width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffFFFFFF),
              ),
              child: Container(
                padding: const EdgeInsets.only(
                    left: 18, top: 15, bottom: 15, right: 19),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommanText(
                          text: 'Order',
                          weight: 0.018 * height,
                          fontWeight: FontWeight.w400,
                          color: AppColor.greycolor,
                        ),
                        CommanText(
                          text: '\$ 95.00',
                          weight: 0.018 * height,
                          fontWeight: FontWeight.w400,
                          color: AppColor.blackcolor,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommanText(
                          text: 'Delivery',
                          weight: 0.018 * height,
                          fontWeight: FontWeight.w400,
                          color: AppColor.greycolor,
                        ),
                        CommanText(
                          text: '\$ 5.00',
                          weight: 0.018 * height,
                          fontWeight: FontWeight.w400,
                          color: AppColor.blackcolor,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommanText(
                          text: 'Total',
                          weight: 0.018 * height,
                          fontWeight: FontWeight.w400,
                          color: AppColor.greycolor,
                        ),
                        CommanText(
                          text: '\$ 100.00',
                          weight: 0.018 * height,
                          fontWeight: FontWeight.bold,
                          color: AppColor.blackcolor,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'CongratesScreen');
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
                    text: "Submit order",
                    color: AppColor.primaryColor,
                    weight: 0.016 * height,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.050 * height,
            )
          ],
        ),
      ),
    );
  }
}
