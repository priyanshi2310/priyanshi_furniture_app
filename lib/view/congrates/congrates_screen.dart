import 'package:flutter/material.dart';
import 'package:priyanshi_furniture_app/res/common/comman_text.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';
import 'package:priyanshi_furniture_app/res/constant/app_images.dart';

class CongratesScreen extends StatefulWidget {
  const CongratesScreen({super.key});

  @override
  State<CongratesScreen> createState() => _CongratesScreenState();
}

class _CongratesScreenState extends State<CongratesScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 124, left: 24, right: 24),
        child: Column(
          children: [
            Center(
              child: CommanText(
                text: 'SUCCESS!',
                weight: 0.032 * height,
                fontWeight: FontWeight.bold,
                color: AppColor.lightblack,
              ),
            ),
            SizedBox(
              height: 0.027 * height,
            ),
            Image.asset(
              AppImages.congrates,
              scale: 3,
            ),
            SizedBox(
              height: 0.032 * height,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: CommanText(
                text:
                    ' Your order will be delivered soon.\n Thank you for choosing our app!',
                weight: 0.016 * height,
                color: AppColor.greycolor,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'OrderScreen');
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
                    text: "Track your orders",
                    color: AppColor.primaryColor,
                    weight: 0.016 * height,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.016 * height,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'NavigationBarScreen');
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
                    text: "Back to home",
                    color: AppColor.primaryColor,
                    weight: 0.016 * height,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.056 * height,
            ),
          ],
        ),
      ),
    );
  }
}
