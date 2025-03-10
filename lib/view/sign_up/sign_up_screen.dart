import 'package:flutter/material.dart';
import 'package:priyanshi_furniture_app/res/common/comman_text.dart';
import 'package:priyanshi_furniture_app/res/common/comman_textfield.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';
import 'package:priyanshi_furniture_app/res/constant/app_images.dart';
import 'package:priyanshi_furniture_app/res/constant/app_text.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 64),
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    endIndent: 10,
                  ),
                ),
                Image.asset(
                  AppImages.chair,
                  scale: 1.2,
                ),
                const Expanded(
                  child: Divider(
                    indent: 10,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.044 * height,
            ),
            Text(
              'WELCOME',
              style: TextStyle(
                fontSize: 0.032 * height,
                fontWeight: FontWeight.w600,
                color: AppColor.blackcolor,
              ),
            ),
            SizedBox(
              height: 0.032 * height,
            ),
            Container(
              height: 0.620 * height,
              width: 0.927 * width,
              decoration: BoxDecoration(color: AppColor.primaryColor),
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      height: 0.076 * height,
                      width: 0.787 * width,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.whitecolor),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Center(
                          child: CommanTextField(
                            labetlText: "Name",
                            color: AppColor.greycolor,
                            weight: 0.012 * height,
                            suffixicon: const Icon(Icons.keyboard_arrow_down),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0.016 * height,
                    ),
                    Container(
                      height: 0.076 * height,
                      width: 0.787 * width,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.whitecolor),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Center(
                          child: CommanTextField(
                            labetlText: "Email",
                            weight: 0.012 * height,
                            color: AppColor.greycolor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0.016 * height,
                    ),
                    Container(
                      height: 0.076 * height,
                      width: 0.787 * width,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.whitecolor),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Center(
                          child: CommanTextField(
                            labetlText: "Password",
                            weight: 0.012 * height,
                            color: AppColor.greycolor,
                            suffixicon: const Icon(Icons.visibility_outlined),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0.016 * height,
                    ),
                    Container(
                      height: 0.076 * height,
                      width: 0.787 * width,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.whitecolor),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: Center(
                          child: CommanTextField(
                            labetlText: "Confirm password ",
                            weight: 0.012 * height,
                            color: AppColor.greycolor,
                            suffixicon: const Icon(Icons.visibility_outlined),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0.034 * height,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return ProductScreen();
                        // }));
                        Navigator.pushNamed(context, 'NavigationBarScreen');
                      },
                      child: Container(
                        height: 0.056 * height,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColor.blackcolor),
                        child: Center(
                          child: CommanText(
                            text: AppText.final1Text,
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
                        Navigator.pop(context);
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: AppText.final2Text,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 0.014 * height,
                                color: const Color(0xff303030),
                              ),
                            ),
                          ],
                          text: 'Already have account? ',
                          style: TextStyle(
                            color: AppColor.greycolor,
                            fontSize: 0.014 * height,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
