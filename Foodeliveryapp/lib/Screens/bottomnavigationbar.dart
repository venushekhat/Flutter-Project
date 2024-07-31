import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecommarceapp/Screens/Homepage.dart';
import 'package:ecommarceapp/Screens/order.dart';
import 'package:ecommarceapp/Screens/profile.dart';
import 'package:ecommarceapp/Screens/wallet.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget> screens;
  late Widget currentpage;
  late Homepage home;
  late Profile profile;
  late Order order;
  late Wallet wallet;

  @override
  void initState() {
    home = Homepage();
    profile = Profile();
    order = Order();
    wallet = Wallet();
    screens = [home, profile, order, wallet];
    currentpage = home;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
              currentpage = screens[currentTabIndex];
            });
          },
          items: [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.wallet_outlined,
              color: Colors.white,
              size: 30,
            ),
            Icon(
              Icons.person_2_outlined,
              color: Colors.white,
              size: 30,
            ),
          ]),
      body: currentpage,
    );
  }
}
