import 'package:flutter/material.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';
import 'package:priyanshi_furniture_app/view/add_payment/add_payment_screen.dart';
import 'package:priyanshi_furniture_app/view/add_shipping_address/add_shipping_address_screen.dart';
import 'package:priyanshi_furniture_app/view/cart/cart_screen.dart';
import 'package:priyanshi_furniture_app/view/checkout/checkout_screen.dart';
import 'package:priyanshi_furniture_app/view/congrates/congrates_screen.dart';
import 'package:priyanshi_furniture_app/view/favourite/favourite_screen.dart';
import 'package:priyanshi_furniture_app/view/home/home_screen.dart';
import 'package:priyanshi_furniture_app/view/log_in/log_in_screen.dart';
import 'package:priyanshi_furniture_app/view/my_review/my_review_screen.dart';
import 'package:priyanshi_furniture_app/view/navigationbar/navigation_bar_screen.dart';
import 'package:priyanshi_furniture_app/view/notification/notification_screen.dart';
import 'package:priyanshi_furniture_app/view/on_boarding/on_boarding_screen.dart';
import 'package:priyanshi_furniture_app/view/order/order_screen.dart';
import 'package:priyanshi_furniture_app/view/payment_method/payment_method_screen.dart';
import 'package:priyanshi_furniture_app/view/product/product_screen.dart';
import 'package:priyanshi_furniture_app/view/profile/profile_screen.dart';
import 'package:priyanshi_furniture_app/view/setting/settings_screen.dart';
import 'package:priyanshi_furniture_app/view/shipping_address/shipping_address_screen.dart';
import 'package:priyanshi_furniture_app/view/sign_up/sign_up_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textSelectionTheme:
            TextSelectionThemeData(cursorColor: AppColor.blackcolor),
        useMaterial3: true,
      ),
      // home: const ProfileScreen(),
      initialRoute: 'Boarding',
      routes: {
        'Boarding': (context) => const Boarding(),
        'LogIn': (context) => const LogIn(),
        'SignUpScreen': (context) => const SignUpScreen(),
        'HomeScreen': (context) => const HomeScreen(),
        'ProductScreen': (context) => const ProductScreen(),
        'FavoriteScreen': (context) => const FavoriteScreen(),
        'CartScreen': (context) => const CartScreen(),
        'NavigationBarScreen': (context) => const NavigationBarScreen(),
        'CheckOutScreen': (context) => const CheckOutScreen(),
        'CongratesScreen': (context) => const CongratesScreen(),
        'NotificationScreen': (context) => const NotificationScreen(),
        'ProfileScreen': (context) => const ProfileScreen(),
        'OrderScreen': (context) => const OrderScreen(),
        'ShippingAddScreen': (context) => const ShippingAddScreen(),
        'AddShippingScreen': (context) => const AddShippingScreen(),
        'PaymentScreen': (context) => const PaymentScreen(),
        'AddPaymentScreen': (context) => const AddPaymentScreen(),
        'MyReviewScreen': (context) => const MyReviewScreen(),
        'SettigsScreen': (context) => const SettigsScreen(),
      },
    );
  }
}
