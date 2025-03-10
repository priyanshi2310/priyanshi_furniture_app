import 'package:flutter/material.dart';
import 'package:priyanshi_furniture_app/res/common/comman_text.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';

class ShippingAddScreen extends StatefulWidget {
  const ShippingAddScreen({super.key});

  @override
  State<ShippingAddScreen> createState() => _ShippingAddScreenState();
}

class _ShippingAddScreenState extends State<ShippingAddScreen> {
  int selectedItems = -1;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: InkWell(
            onTap: () {
              Navigator.pop(context, 'ProfileScreen');
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 18,
            ),
          ),
        ),
        title: CommanText(
          text: "Shipping address",
          weight: 0.016 * height,
          color: AppColor.blackcolor,
          fontWeight: FontWeight.bold,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffFFFFFF),
        onPressed: () {
          Navigator.pushNamed(context, 'AddShippingScreen');
        },
        shape: const CircleBorder(),
        child: Icon(
          Icons.add,
          color: AppColor.blackcolor,
        ),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Checkbox(
                      activeColor: Colors.black,
                      side: const BorderSide(color: Colors.grey),
                      value: selectedItems == index,
                      onChanged: (value) {
                        setState(() {
                          if (value == true) {
                            selectedItems = index;
                          } else {
                            selectedItems = -1;
                          }
                        });
                      },
                    ),
                    CommanText(
                      text: 'Use as the shipping address',
                      weight: 0.018 * height,
                      fontWeight: FontWeight.w400,
                      color: selectedItems == index
                          ? AppColor.blackcolor
                          : AppColor.greycolor,
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  height: 0.119 * height,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor.primaryColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommanText(
                        text: 'Bruno Fernandes',
                        weight: 0.018 * height,
                        fontWeight: FontWeight.w600,
                        color: AppColor.blackcolor,
                      ),
                      const Divider(
                        endIndent: 8,
                      ),
                      CommanText(
                        text:
                            '25 rue Robert Latouche, Nice, 06200, Côte D’azur, France',
                        weight: 0.014 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.greycolor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
