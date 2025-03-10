import 'package:flutter/material.dart';

import 'package:priyanshi_furniture_app/res/common/comman_text.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';

class MyReviewScreen extends StatefulWidget {
  const MyReviewScreen({super.key});

  @override
  State<MyReviewScreen> createState() => _MyReviewScreenState();
}

class _MyReviewScreenState extends State<MyReviewScreen> {
  List<Map<String, dynamic>> reviews = [
    {
      'image': 'images/Media (28).png',
      'title': 'Coffee Table',
      'price': '\$ 50.00',
      'rating': 5,
      'date': '20/03/2020',
      'description':
          'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price.',
    },
    {
      'image': 'images/Media (29).png',
      'title': 'Coffee Table',
      'price': '\$ 50.00',
      'rating': 5,
      'date': '20/03/2020',
      'description':
          'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price.',
    },
    {
      'image': 'images/Media (30).png',
      'title': 'Coffee Table',
      'price': '\$ 50.00',
      'rating': 5,
      'date': '20/03/2020',
      'description':
          'Nice Furniture with good delivery. The delivery time is very fast. Then products look like exactly the picture in the app. Besides, color is also the same and quality is very good despite very cheap price.',
    },
  ];

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
              Navigator.pop(context, 'ProfileScreen');
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 0.018 * height,
            ),
          ),
        ),
        title: CommanText(
          text: "My reviews",
          weight: 0.016 * height,
          color: AppColor.blackcolor,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 18, top: 17),
        child: SingleChildScrollView(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: reviews.length,
            itemBuilder: (context, index) {
              var review = reviews[index];

              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  height: 0.280 * height,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor.primaryColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 0.120 * height,
                            width: 0.180 * width,
                            child: Image.asset(review['image']),
                          ),
                          SizedBox(
                            width: 0.016 * width,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommanText(
                                text: review['title'],
                                fontWeight: FontWeight.w400,
                                weight: 0.016 * height,
                                color: AppColor.blackcolor,
                              ),
                              SizedBox(
                                height: 0.005 * height,
                              ),
                              CommanText(
                                text: review['price'],
                                fontWeight: FontWeight.bold,
                                weight: 0.016 * height,
                                color: AppColor.blackcolor,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: List.generate(
                              review['rating'],
                              (index) {
                                return Icon(
                                  Icons.star,
                                  color: const Color(0xffFFC200),
                                  size: 0.020 * height,
                                );
                              },
                            ),
                          ),
                          CommanText(
                            text: review['date'],
                            fontWeight: FontWeight.w400,
                            weight: 0.012 * height,
                            color: AppColor.greycolor,
                          ),
                        ],
                      ),
                      SizedBox(height: 0.016 * height),
                      CommanText(
                        text: review['description'],
                        fontWeight: FontWeight.w400,
                        weight: 0.014 * height,
                        color: AppColor.greycolor,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
