import 'package:flutter/material.dart';
import 'package:priyanshi_furniture_app/res/common/comman_text.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';
import 'package:priyanshi_furniture_app/res/constant/app_images.dart';
import 'package:priyanshi_furniture_app/res/constant/app_text.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 52),
                  child: SizedBox(
                    height: 0.555 * height,
                    width: double.infinity,
                    child: Image(
                      image: AssetImage(AppImages.product),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 51,
                  left: 22,
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context, 'HomeScreen');
                        },
                        child: Container(
                          height: 0.050 * height,
                          width: 0.110 * width,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 0.018 * height,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.070 * height,
                      ),
                      Container(
                        height: 0.225 * height,
                        width: 0.160 * width,
                        decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 0.038 * height,
                                width: 0.85 * width,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: AppColor.greycolor, width: 5),
                                ),
                              ),
                              Container(
                                height: 0.038 * height,
                                width: 0.85 * width,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: const Color(0xffF5F5F5),
                                        width: 5),
                                    color: const Color(0xffB4916C)),
                              ),
                              Container(
                                height: 0.038 * height,
                                width: 0.85 * width,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: const Color(0xffF5F5F5), width: 5),
                                  color: const Color(0xffE4CBAD),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.024 * height,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CommanText(
                    text: 'Minimal Stand',
                    weight: 0.024 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.blackcolor,
                  ),
                  // SizedBox(
                  //   height: 0.004 * height,
                  // ),
                  Row(
                    children: [
                      CommanText(
                        text: '\$ 50',
                        weight: 0.032 * height,
                        fontWeight: FontWeight.w600,
                        color: AppColor.blackcolor,
                      ),
                      SizedBox(
                        width: 0.390 * width,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            number++;
                          });
                        },
                        icon: Container(
                          height: 0.035 * height,
                          width: 0.075 * width,
                          decoration: BoxDecoration(
                              color: AppColor.whitecolor,
                              borderRadius: BorderRadius.circular(6)),
                          child: Icon(
                            Icons.add,
                            size: 24,
                            color: AppColor.blackcolor,
                          ),
                        ),
                      ),
                      Text(number.toString()),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            number--;
                          });
                        },
                        icon: Container(
                          height: 0.035 * height,
                          width: 0.075 * width,
                          decoration: BoxDecoration(
                            color: AppColor.whitecolor,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Icon(
                            Icons.remove,
                            size: 30,
                            color: AppColor.blackcolor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xffF2C94C),
                      ),
                      SizedBox(
                        width: 0.010 * width,
                      ),
                      CommanText(
                        text: '4.5',
                        weight: 0.018 * height,
                        fontWeight: FontWeight.bold,
                        color: AppColor.blackcolor,
                      ),
                      SizedBox(width: 0.035 * width),
                      CommanText(
                        text: '(50 reviews)',
                        weight: 0.014 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.greycolor,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.016 * height,
                  ),
                  CommanText(
                    text:
                        'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ',
                    color: AppColor.greycolor,
                    weight: 0.014 * height,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 0.038 * height,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 0.062 * height,
                        width: 0.130 * width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColor.whitecolor),
                        child: Icon(
                          Icons.bookmark_outline,
                          color: AppColor.greycolor,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return const FavoriteScreen();
                          // }));
                          Navigator.pushNamed(context, 'FavoriteScreen');
                        },
                        child: Container(
                          height: 0.056 * height,
                          width: 0.700 * width,
                          decoration: BoxDecoration(
                            color: AppColor.blackcolor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: CommanText(
                              text: AppText.cart,
                              color: AppColor.primaryColor,
                              weight: 0.016 * height,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
