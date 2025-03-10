import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:priyanshi_furniture_app/res/common/comman_text.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';

class SettigsScreen extends StatefulWidget {
  const SettigsScreen({super.key});

  @override
  State<SettigsScreen> createState() => _SettigsScreenState();
}

class _SettigsScreenState extends State<SettigsScreen> {
  bool salesNotification = false;
  bool newArrivalsNotification = false;
  bool deliveryStatusNotification = false;

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
          text: "Setting",
          weight: 0.016 * height,
          color: AppColor.blackcolor,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 19, right: 21, top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommanText(
                    text: 'Personal information',
                    weight: 0.018 * height,
                    fontWeight: FontWeight.w600,
                    color: AppColor.greycolor,
                  ),
                  const Icon(Icons.border_color_outlined)
                ],
              ),
              SizedBox(
                height: 0.012 * height,
              ),
              Card(
                child: ListTile(
                  tileColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  title: CommanText(
                    text: 'Name',
                    weight: 0.012 * height,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff808080),
                  ),
                  subtitle: CommanText(
                    text: 'Bruno Pham',
                    weight: 0.014 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.blackcolor,
                  ),
                ),
              ),
              SizedBox(
                height: 0.016 * height,
              ),
              Card(
                child: ListTile(
                  tileColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  title: CommanText(
                    text: 'Email',
                    weight: 0.012 * height,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff808080),
                  ),
                  subtitle: CommanText(
                    text: 'bruno203@gmail.com',
                    weight: 0.014 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.blackcolor,
                  ),
                ),
              ),
              SizedBox(
                height: 0.040 * height,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommanText(
                    text: 'Password',
                    weight: 0.018 * height,
                    fontWeight: FontWeight.w600,
                    color: AppColor.greycolor,
                  ),
                  const Icon(Icons.border_color_outlined)
                ],
              ),
              SizedBox(
                height: 0.012 * height,
              ),
              Card(
                child: ListTile(
                  tileColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  title: CommanText(
                    text: 'Name',
                    weight: 0.012 * height,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff808080),
                  ),
                  subtitle: CommanText(
                    text: '***************',
                    weight: 0.014 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.blackcolor,
                  ),
                ),
              ),
              SizedBox(
                height: 0.040 * height,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommanText(
                    text: 'Notification',
                    weight: 0.018 * height,
                    fontWeight: FontWeight.w600,
                    color: AppColor.greycolor,
                  ),
                ],
              ),
              SizedBox(
                height: 0.016 * height,
              ),
              Card(
                child: ListTile(
                  tileColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  title: CommanText(
                    text: 'Sales',
                    weight: 0.016 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.blackcolor,
                  ),
                  trailing: CupertinoSwitch(
                    activeColor: Colors.green,
                    trackColor: Colors.grey,
                    value: salesNotification,
                    onChanged: (value) {
                      setState(() {
                        salesNotification = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 0.016 * height,
              ),
              Card(
                child: ListTile(
                  tileColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  title: CommanText(
                    text: 'New arrivals',
                    weight: 0.016 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.blackcolor,
                  ),
                  trailing: CupertinoSwitch(
                    activeColor: Colors.green,
                    trackColor: Colors.grey,
                    value: newArrivalsNotification,
                    onChanged: (value) {
                      setState(() {
                        newArrivalsNotification = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 0.016 * height,
              ),
              Card(
                child: ListTile(
                  tileColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  title: CommanText(
                    text: 'Delivery status changes',
                    weight: 0.016 * height,
                    fontWeight: FontWeight.w400,
                    color: AppColor.blackcolor,
                  ),
                  trailing: CupertinoSwitch(
                    activeColor: Colors.green,
                    trackColor: Colors.grey,
                    value: deliveryStatusNotification,
                    onChanged: (value) {
                      setState(() {
                        deliveryStatusNotification = value;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 0.040 * height,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommanText(
                    text: 'Help center',
                    weight: 0.018 * height,
                    fontWeight: FontWeight.w600,
                    color: AppColor.greycolor,
                  ),
                ],
              ),
              SizedBox(
                height: 0.012 * height,
              ),
              Card(
                child: ListTile(
                  tileColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  title: CommanText(
                    text: 'FAQ',
                    weight: 0.016 * height,
                    fontWeight: FontWeight.w600,
                    color: AppColor.blackcolor,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 0.020 * height,
                  ),
                ),
              ),
              SizedBox(
                height: 0.010 * height,
              ),
              Card(
                child: ListTile(
                  tileColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  title: CommanText(
                    text: 'Contact Us',
                    weight: 0.016 * height,
                    fontWeight: FontWeight.w600,
                    color: AppColor.blackcolor,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 0.016 * height,
                  ),
                ),
              ),
              SizedBox(
                height: 0.010 * height,
              ),
              Card(
                child: ListTile(
                  tileColor: AppColor.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  title: CommanText(
                    text: 'Privacy & Terms',
                    weight: 0.016 * height,
                    fontWeight: FontWeight.w600,
                    color: AppColor.blackcolor,
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 0.020 * height,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
