import 'package:flutter/material.dart';

import 'package:priyanshi_furniture_app/res/common/comman_text.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';
import 'package:priyanshi_furniture_app/res/constant/app_images.dart';
import 'package:priyanshi_furniture_app/res/constant/app_text.dart';

class Boarding extends StatefulWidget {
  const Boarding({super.key});

  @override
  State<Boarding> createState() => _BoardingState();
}

class _BoardingState extends State<Boarding> {
  set inkwell(String inkwell) {}

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.images)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 32, top: 96, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommanText(
                text: "MAKE YOUR \nHOME BEAUTIFUL",
                weight: 0.036 * height,
                color: AppColor.blackcolor,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 0.024 * height),
              CommanText(
                text:
                    "The best simple place where you \ndiscover most wonderful furniture and \nmake your home beautiful",
                weight: 0.016 * height,
                color: AppColor.greycolor,
                fontWeight: FontWeight.w400,
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  // Navigator.pushAndRemoveUntil(context,
                  //     MaterialPageRoute(builder: (context) {
                  //   return LogIn();
                  // }), (route) => false);
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return LogIn();
                  // }));
                  Navigator.pushNamed(context, 'LogIn');
                },
                child: Container(
                  height: 0.054 * height,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: AppColor.blackcolor,
                  ),
                  child: Center(
                    child: CommanText(
                      text: AppText.final4Text,
                      color: AppColor.primaryColor,
                      weight: 0.018 * height,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0.058 * height),
            ],
          ),
        ),
      ),
    );
  }
}
