import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavigationMenuBar extends StatefulWidget {
  const NavigationMenuBar({super.key});

  @override
  State<NavigationMenuBar> createState() => _NavigationMenuBarState();
}

class _NavigationMenuBarState extends State<NavigationMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,
          vertical: 10.0),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.blue.shade900,
            padding: EdgeInsets.all(16),
            gap: 8,
           tabs: [
            GButton(icon: Icons.home_filled, text: 'Home' ),
            GButton(icon: Icons.directions_train_rounded, text: 'Discover'),
            GButton(icon: Icons.history_outlined, text: 'B-History'),
            GButton(icon: Icons.person, text: 'Profile'),
           ],
          ),
        ),
      ),
    );
  }
}
