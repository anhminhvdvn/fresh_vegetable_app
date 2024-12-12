import 'package:flutter/material.dart';
import 'package:test_project_1/page/bag_page/bag_page.dart';
import 'package:test_project_1/page/home_page/home_page.dart';
import 'package:test_project_1/page/profile_page/profile_page.dart';
import 'package:test_project_1/page/shop_page/shop_page.dart';

class Navigate extends StatefulWidget {
  const Navigate({super.key});

  @override
  State<Navigate> createState() => _NavigateState();
}

class _NavigateState extends State<Navigate> {
  //this selected index is to control the bottom nav bar
  int _selectedIndex = 0;
  //this method will update our selected index
  //when the user taps on the bottom bar
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
//page to displace

  final List<Widget> _page = [
    const HomePage(),
    const ShopPage(),
    const BagPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    int myIndex = 0;
    return Scaffold(
      body: _page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: myIndex,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        onTap: (value) => navigateBottomBar(value),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
            label: 'Bag',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
