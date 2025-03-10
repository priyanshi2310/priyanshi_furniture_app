import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:priyanshi_furniture_app/res/constant/app_color.dart';
import 'package:priyanshi_furniture_app/view/favourite/favourite_screen.dart';
import 'package:priyanshi_furniture_app/view/home/home_screen.dart';
import 'package:priyanshi_furniture_app/view/notification/notification_screen.dart';
import 'package:priyanshi_furniture_app/view/profile/profile_screen.dart';

List<TabItem> items = [
  const TabItem(icon: (Icons.home_outlined)),
  const TabItem(icon: (Icons.bookmark_outline)),
  const TabItem(icon: (Icons.notifications_outlined)),
  const TabItem(icon: (Icons.person_2_outlined)),
];

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int visit = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        const HomeScreen(),
        const FavoriteScreen(),
        const NotificationScreen(),
        const ProfileScreen(),
      ][visit],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(bottom: 10),
        child: BottomBarFloating(
          items: items,
          iconSize: 24,
          backgroundColor: Colors.transparent,
          color: AppColor.greycolor,
          colorSelected: AppColor.blackcolor,
          indexSelected: visit,
          paddingVertical: 10,
          onTap: (int index) => setState(
            () {
              visit = index;
            },
          ),
        ),
      ),
    );
  }
}
// import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';

// import 'package:flutter/material.dart';
// import 'package:furniture_app/res/constant/app_color.dart';
// import 'package:furniture_app/view/home/home_screen.dart';

// const List<TabItem> items = [
//   TabItem(
//     icon: Icons.home,
//     // title: 'Home',
//   ),
//   TabItem(
//     icon: Icons.bookmark_border_outlined,
//     // title: 'Shop',
//   ),
//   TabItem(
//     icon: Icons.notifications_outlined,
//     // title: 'Wishlist',
//   ),
//   TabItem(
//     icon: Icons.shopping_cart_outlined,
//     // title: 'Cart',
//   ),
// ];

// class NavigationScreen extends StatefulWidget {
//   const NavigationScreen({
//     Key? key,
//   }) : super(key: key);

//   @override
//   _NavigationScreenState createState() => _NavigationScreenState();
// }

// class _NavigationScreenState extends State<NavigationScreen> {
//   int visit = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: [
//         const HomeScreen(),
//         const Center(child: Text('data1')),
//         const Text('data2'),
//         const Text('data3'),
//       ][visit],
//       bottomNavigationBar: Container(
//         // height:,
//         padding: const EdgeInsets.only(bottom: 50),
//         // padding: const EdgeInsets.only(bottom: 30, right: 32, left: 32),
//         child: BottomBarFloating(
//           items: items,
//           backgroundColor: Colors.transparent,
//           color: AppColor.finalColor,
//           colorSelected: AppColor.fillColor,
//           indexSelected: visit,
//           paddingVertical: 10,
//           onTap: (int index) => setState(() {
//             visit = index;
//           }),
//         ),
//       ),
//     );
//   }
// }

