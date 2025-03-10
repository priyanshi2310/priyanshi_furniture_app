import 'package:flutter/material.dart';

import 'package:priyanshi_furniture_app/res/common/comman_text.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';
import 'package:priyanshi_furniture_app/res/constant/app_images.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: CommanText(
          text: 'Profile',
          weight: 0.016 * height,
          fontWeight: FontWeight.bold,
          color: AppColor.blackcolor,
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 18),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(AppImages.profile),
                SizedBox(
                  width: 0.050 * width,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CommanText1(
                      text: 'Kristin Watson',
                      weight: 0.020 * height,
                      fontWeight: FontWeight.w700,
                      color: AppColor.lightblack,
                    ),
                    CommanText1(
                      text: 'bruno203@gmail.com',
                      weight: 0.014 * height,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff808080),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 0.030 * height,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'OrderScreen');
              },
              child: Card(
                child: ListTile(
                  tileColor: AppColor.primaryColor,
                  title: CommanText(
                    text: 'My orders',
                    weight: 0.018 * height,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blackcolor,
                  ),
                  subtitle: CommanText(
                    text: 'Already have 10 orders',
                    weight: 0.012 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.greycolor,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 0.020 * height,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.015 * height,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'ShippingAddScreen');
              },
              child: Card(
                child: ListTile(
                  tileColor: AppColor.primaryColor,
                  title: CommanText(
                    text: 'Shipping Addresses',
                    weight: 0.018 * height,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blackcolor,
                  ),
                  subtitle: CommanText(
                    text: '03 Addresses',
                    weight: 0.012 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.greycolor,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 0.020 * height,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.015 * height,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'PaymentScreen');
              },
              child: Card(
                child: ListTile(
                  tileColor: AppColor.primaryColor,
                  title: CommanText(
                    text: 'Payment Method',
                    weight: 0.018 * height,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blackcolor,
                  ),
                  subtitle: CommanText(
                    text: 'You have 2 cards',
                    weight: 0.012 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.greycolor,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 0.020 * height,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.015 * height,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'MyReviewScreen');
              },
              child: Card(
                child: ListTile(
                  tileColor: AppColor.primaryColor,
                  title: CommanText(
                    text: 'My reviews',
                    weight: 0.018 * height,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blackcolor,
                  ),
                  subtitle: CommanText(
                    text: 'Reviews for 5 items',
                    weight: 0.012 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.greycolor,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 0.020 * height,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.015 * height,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'SettigsScreen');
              },
              child: Card(
                child: ListTile(
                  tileColor: AppColor.primaryColor,
                  title: CommanText(
                    text: 'Setting',
                    weight: 0.018 * height,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blackcolor,
                  ),
                  subtitle: CommanText(
                    text: 'Notification, Password, FAQ, Contact',
                    weight: 0.012 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.greycolor,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 0.020 * height,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
