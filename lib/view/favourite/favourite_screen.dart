import 'package:flutter/material.dart';
import 'package:priyanshi_furniture_app/res/common/comman_text.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  List<String> images = [
    "images/Media (20).png",
    "images/Media (21).png",
    "images/Media (22).png",
    "images/Media (23).png"
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: CommanText(
          text: "Favorites",
          weight: 0.016 * height,
          color: AppColor.blackcolor,
          fontWeight: FontWeight.bold,
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            SizedBox(
              height: 0.700 * height,
              child: ListView.separated(
                itemCount: images.length,
                itemBuilder: ((context, index) {
                  return Container(
                    height: 0.140 * height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 0.250 * height,
                          width: 0.250 * width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset(
                            images[index],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment:
                                  //     MainAxisAlignment.spaceBetween,
                                  children: [
                                    CommanText(
                                      text: "Minimal Stand",
                                      weight: 0.014 * height,
                                      fontWeight: FontWeight.w400,
                                      color: AppColor.greycolor,
                                    ),
                                    const SizedBox(
                                      width: 110,
                                    ),
                                    const Icon(Icons.cancel_outlined)
                                  ],
                                ),
                                CommanText(
                                  text: "\$ 25.00",
                                  weight: 0.016 * height,
                                  fontWeight: FontWeight.w600,
                                  color: AppColor.blackcolor,
                                ),
                                const Spacer(),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    height: 0.035 * height,
                                    width: 0.080 * width,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        color: AppColor.whitecolor),
                                    child: const Icon(Icons.shopping_bag),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    indent: 8,
                    endIndent: 8,
                  );
                },
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 24),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'CartScreen');
                },
                child: Container(
                  height: 0.056 * height,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColor.blackcolor),
                  child: Center(
                    child: CommanText(
                      text: "Add all to my cart",
                      weight: 0.016 * height,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
