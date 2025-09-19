import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/consts.dart';

class ButtomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const ButtomNavBar({super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "home"
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Wishlist"
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Settings"
          ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Profile"
          ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: primaryColor,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: onItemTapped,
      );
  }
}