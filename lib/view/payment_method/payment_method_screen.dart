import 'package:flutter/material.dart';
import 'package:priyanshi_furniture_app/res/common/comman_text.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';
import 'package:priyanshi_furniture_app/res/constant/app_images.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int selectcolor = 0;
  bool isPaymentMethod1Default = false;
  bool isPaymentMethod2Default = false;
  int selectedPaymentMethodIndex = -1;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;

    return Scaffold(
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
          text: "Payment method",
          weight: 0.016 * height,
          color: AppColor.blackcolor,
          fontWeight: FontWeight.bold,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffFFFFFF),
        onPressed: () {
          Navigator.pushNamed(context, 'AddPaymentScreen');
        },
        shape: const CircleBorder(),
        child: Icon(
          Icons.add,
          color: AppColor.blackcolor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 21, right: 21, top: 24),
        child: ListView.builder(
          itemCount:
              2, 
          itemBuilder: (context, index) {
            return Container(
              height: 0.280 * height,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 24, top: 20),
                    height: 0.200 * height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: selectedPaymentMethodIndex == index
                          ? AppColor.blackcolor
                          : AppColor.greycolor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          index == 0
                              ? AppImages.payment
                              : "images/visa (2).png",
                          scale: 1.5,
                        ),
                        SizedBox(
                          height: 0.018 * height,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '   3947',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 0.020 * height,
                                  fontWeight: FontWeight.w400,
                                  color: AppColor.primaryColor,
                                ),
                              ),
                            ],
                            text: '* * * *  * * * *  * * * *',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 0.020 * height,
                              fontWeight: FontWeight.w100,
                              color: AppColor.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(height: 0.027 * height),
                        Row(
                          children: [
                            CommanText(
                              text: 'Card Holder Name',
                              weight: 0.012 * height,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryColor,
                            ),
                            SizedBox(
                              width: 0.091 * height,
                            ),
                            CommanText(
                              text: 'Expiry Date',
                              weight: 0.012 * height,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryColor,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CommanText(
                              text: 'Jennyfer Doe',
                              weight: 0.014 * height,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryColor,
                            ),
                            SizedBox(
                              width: 0.111 * height,
                            ),
                            CommanText(
                              text: '05/23',
                              weight: 0.014 * height,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primaryColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 0.010 * height,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        activeColor: Colors.black,
                        side: const BorderSide(color: Colors.grey),
                        value: selectedPaymentMethodIndex == index,
                        onChanged: (value) {
                          setState(() {
                            if (value == true) {
                              selectedPaymentMethodIndex = index;
                            } else {
                              selectedPaymentMethodIndex =
                                  -1; // Deselect all items
                            }
                          });
                        },
                      ),
                      CommanText(
                        text: 'Use as default payment method',
                        weight: 0.016 * height,
                        fontWeight: FontWeight.w400,
                        color: selectedPaymentMethodIndex == index
                            ? AppColor.blackcolor
                            : AppColor.greycolor,
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
