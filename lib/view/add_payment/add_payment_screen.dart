import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:priyanshi_furniture_app/res/common/comman_text.dart';
import 'package:priyanshi_furniture_app/res/common/comman_textfield.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';
import 'package:priyanshi_furniture_app/res/constant/app_images.dart';

class AddPaymentScreen extends StatefulWidget {
  const AddPaymentScreen({super.key});

  @override
  State<AddPaymentScreen> createState() => _AddPaymentScreenState();
}

class _AddPaymentScreenState extends State<AddPaymentScreen> {
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
              Navigator.pop(context, 'PaymentScreen');
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 0.018 * height,
            ),
          ),
        ),
        title: CommanText(
          text: "Add payment method",
          weight: 0.016 * height,
          color: AppColor.blackcolor,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 24),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 26, top: 20),
              height: 0.200 * height,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColor.blackcolor,
                borderRadius: BorderRadius.circular(7.77),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppImages.payment,
                        scale: 1.5,
                      ),
                      SizedBox(
                        width: 0.018 * height,
                      ),
                      Image.asset('images/visa (2).png')
                    ],
                  ),
                  SizedBox(
                    height: 0.023 * height,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '   XXXX',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 0.020 * height,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryColor,
                          ),
                        ),
                      ],
                      text: '* * * *  * * * *  * * * *',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 0.020 * height,
                        fontWeight: FontWeight.w100,
                        color: AppColor.primaryColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 0.027 * height),
                  Row(
                    children: [
                      CommanText(
                        text: 'Card Holder Name',
                        weight: 0.012 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryColor,
                      ),
                      SizedBox(
                        width: 0.093 * height,
                      ),
                      CommanText(
                        text: 'Expiry Date',
                        weight: 0.012 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryColor,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      CommanText(
                        text: 'XXXXXX',
                        weight: 0.014 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryColor,
                      ),
                      SizedBox(
                        width: 0.156 * height,
                      ),
                      CommanText(
                        text: 'XX/XX',
                        weight: 0.014 * height,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.038 * height,
            ),
            Container(
              height: 0.082 * height,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.whitecolor, width: 1),
                borderRadius: BorderRadius.circular(4),
                color: const Color(0xffF5F5F5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                ),
                child: Center(
                  child: CommanTextField(
                    labetlText: "CardHolder Name",
                    fontWeight: FontWeight.w400,
                    weight: 0.012 * height,
                    color: AppColor.greycolor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.020 * height,
            ),
            TextFormField(
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                CardNumberFormatter(),
              ],
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.blackcolor,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      style: BorderStyle.solid, color: AppColor.blackcolor),
                ),
                hintText: 'XXXX XXXX XXXX XXXX',
                labelText: 'Card Number',
                labelStyle: TextStyle(
                  color: AppColor.blackcolor,
                ),
                
              ),
              maxLength: 16,
              onChanged: (value) {},
            ),
            SizedBox(
              height: 0.020 * height,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  height: 0.076 * height,
                  width: 0.190 * height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xffF5F5F5),
                  ),
                  child: CommanTextField(
                    labetlText: "CVV",
                    fontWeight: FontWeight.w400,
                    weight: 0.012 * height,
                    color: const Color(0xff808080),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  height: 0.076 * height,
                  width: 0.190 * height,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColor.whitecolor),
                  ),
                  child: CommanTextField(
                    labetlText: "Expiration Date",
                    fontWeight: FontWeight.w400,
                    weight: 0.012 * height,
                    color: const Color(0xff808080),
                  ),
                )
              ],
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
                  child: Text(
                    "Add new card",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 0.016 * height,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.050 * height,
            )
          ],
        ),
      ),
    );
  }
}

class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue previousValue,
    TextEditingValue nextValue,
  ) {
    var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }

    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return nextValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}
