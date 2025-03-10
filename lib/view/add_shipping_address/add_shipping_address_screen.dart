import 'package:flutter/material.dart';

import 'package:priyanshi_furniture_app/res/common/comman_text.dart';
import 'package:priyanshi_furniture_app/res/common/comman_textfield.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';

class AddShippingScreen extends StatefulWidget {
  const AddShippingScreen({super.key});

  @override
  State<AddShippingScreen> createState() => _AddShippingScreenState();
}

class _AddShippingScreenState extends State<AddShippingScreen> {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: InkWell(
            onTap: () {
              Navigator.pop(context, 'ShippingAddScreen');
            },
            child: Icon(Icons.arrow_back_ios, size: 0.018 * height),
          ),
        ),
        title: CommanText(
          text: "Add shipping address",
          weight: 0.016 * height,
          color: AppColor.blackcolor,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: BorderSide(color: AppColor.whitecolor),
              ),
              color: AppColor.primaryColor,
              child: ListTile(
                title: CommanTextField(
                  labetlText: 'Full name',
                  weight: 0.012 * height,
                  fontWeight: FontWeight.w400,
                  color: AppColor.greycolor,
                ),
                // subtitle: CommanText(
                //   text: 'Arlene McCoy',
                //   weight: 0.016 * height,
                //   fontWeight: FontWeight.w400,
                //   color: AppColor.blackcolor,
                // ),
              ),
            ),
            SizedBox(height: 0.010 * height),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: BorderSide(color: AppColor.whitecolor),
              ),
              color: AppColor.primaryColor,
              child: ListTile(
                title: CommanTextField(
                  labetlText: 'Address',
                  weight: 0.012 * height,
                  fontWeight: FontWeight.w400,
                  color: AppColor.greycolor,
                ),
                // subtitle: CommanText(
                //     text: '25 Robert Latouche Street',
                //     weight: 0.016 * height,
                //     fontWeight: FontWeight.w400,
                //     color: AppColor.blackcolor),
              ),
            ),
            SizedBox(height: 0.010 * height),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
                side: BorderSide(color: AppColor.whitecolor),
              ),
              color: AppColor.primaryColor,
              child: ListTile(
                title: CommanTextField(
                  labetlText: 'Zipcode (Postal Code)',
                  weight: 0.012 * height,
                  fontWeight: FontWeight.w400,
                  color: AppColor.greycolor,
                ),
                // subtitle: CommanText(
                //     text: '324545',
                //     weight: 0.016 * height,
                //     fontWeight: FontWeight.w400,
                //     color: AppColor.blackcolor),
              ),
            ),
            SizedBox(height: 0.010 * height),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                  side: BorderSide(
                    color:
                        selectedIndex == 3
                            ? AppColor.greycolor
                            : AppColor.whitecolor,
                  ),
                ),
                color:
                    selectedIndex == 3
                        ? AppColor.whitecolor
                        : AppColor.primaryColor,
                child: ListTile(
                  trailing: const Icon(Icons.keyboard_arrow_down),
                  title: CommanTextField(
                    labetlText: 'Country',
                    weight: 0.012 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.greycolor,
                  ),
                  // subtitle: CommanText(
                  //   text: 'USA',
                  //   weight: 0.016 * height,
                  //   fontWeight: FontWeight.w400,
                  //   color: AppColor.blackcolor,
                  // ),
                ),
              ),
            ),
            SizedBox(height: 0.010 * height),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                  side: BorderSide(
                    color:
                        selectedIndex == 4
                            ? AppColor.greycolor
                            : AppColor.whitecolor,
                  ),
                ),
                color:
                    selectedIndex == 4
                        ? AppColor.whitecolor
                        : AppColor.primaryColor,
                child: ListTile(
                  trailing: const Icon(Icons.keyboard_arrow_down),
                  title: CommanTextField(
                    labetlText: 'City',
                    weight: 0.012 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.greycolor,
                  ),
                  // subtitle: CommanText(
                  //   text: 'New York',
                  //   weight: 0.016 * height,
                  //   fontWeight: FontWeight.w400,
                  //   color: AppColor.blackcolor,
                  // ),
                ),
              ),
            ),
            SizedBox(height: 0.010 * height),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 5;
                });
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                  side: BorderSide(
                    color:
                        selectedIndex == 5
                            ? AppColor.greycolor
                            : AppColor.whitecolor,
                  ),
                ),
                color:
                    selectedIndex == 5
                        ? AppColor.whitecolor
                        : AppColor.primaryColor,
                child: ListTile(
                  trailing: const Icon(Icons.keyboard_arrow_down),
                  title: CommanTextField(
                    labetlText: 'District',
                    weight: 0.012 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.greycolor,
                  ),
                  // subtitle: CommanText(
                  //   text: 'Select District',
                  //   weight: 0.016 * height,
                  //   fontWeight: FontWeight.w400,
                  //   color: const Color(0xffB3B3B3),
                  // ),
                ),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'PaymentScreen');
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
                    text: "Save address",
                    weight: 0.016 * height,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffFFFFFF),
                  ),
                ),
              ),
            ),
            SizedBox(height: 0.050 * height),
          ],
        ),
      ),
    );
  }
}
