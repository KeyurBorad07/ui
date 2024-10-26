import 'package:flutter/material.dart';
import 'package:ui/MadBurger/home_page_mad.dart';

class BottomNaviBar extends StatefulWidget {
  const BottomNaviBar({super.key});

  @override
  State<BottomNaviBar> createState() => _BottomNaviBarState();
}

class _BottomNaviBarState extends State<BottomNaviBar> {
  List screen = [
    const HomePageMad(),
    const Center(child: Text("Order Screen")),
    const Center(child: Text("Profile Screen")),
  ];

  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[select],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.teal,
        currentIndex: select,
        selectedIconTheme: const IconThemeData(color: Colors.orange),
        selectedItemColor: Colors.black,
        // unselectedIconTheme: IconThemeData(color: Colors.pink),
        // unselectedItemColor: Colors.red,
        // showUnselectedLabels: false,
        // showSelectedLabels: false,
        // type: BottomNavigationBarType.shifting,
        onTap: (value) {
          select = value;
          setState(
            () {},
          );
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
            ),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
