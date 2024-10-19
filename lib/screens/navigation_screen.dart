import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:boutique_shop/screens/home_screen.dart';
import 'package:boutique_shop/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'cart_screen.dart';
import 'favorites_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex =  0;

  List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: IndexedStack(
      //   index: pageIndex,
      //   children: page,
      // ),
      // bottomNavigationBar: AnimatedBottomNavigationBar(
      //     icons: [
      //       CupertinoIcons.home,
      //       CupertinoIcons.cart,
      //       CupertinoIcons.heart,
      //       CupertinoIcons.profile_circled,
      //     ],
      //     inactiveColor: Colors.black.withOpacity(0.5),
      //     activeColor: Color(0xFFDB3022),
      //     gapLocation: GapLocation.center,
      //     activeIndex: pageIndex,
      //     notchSmoothness: NotchSmoothness.softEdge,
      //     leftCornerRadius: 10,
      //     iconSize: 25,
      //     rightCornerRadius: 10,
      //     elevation: 0,
      //     onTap: (index){
      //       setState(() {
      //         pageIndex = index;
      //       });
      //     },
      // ),
      body: pages[pageIndex], // Display the selected page
      bottomNavigationBar: NavigationBar(
        height: 100,
        elevation: 0,
        selectedIndex: pageIndex,
        onDestinationSelected: (index) {
          setState(() {
            pageIndex = index; // Update selected index
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
          NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        ],
      ),
    );
  }
}


// class NavigationController extends GetxController{
//   final int
// }
