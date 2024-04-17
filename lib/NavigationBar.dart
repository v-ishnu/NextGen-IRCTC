import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:nextgen_irctc/Pages/Home.dart';
import 'package:nextgen_irctc/Pages/BookHistory.dart';
import 'package:nextgen_irctc/Pages/Discover.dart';
import 'package:nextgen_irctc/Pages/Profile.dart';

class NavigationMenuBar extends StatefulWidget {
  int myIndex = 0;

  final List<Widget> widgetList = [
    Home(),
    Discover(),
    BookHistory(),
    Profile()
  ];

  @override
  State<NavigationMenuBar> createState() => _NavigationMenuBarState();
}

class _NavigationMenuBarState extends State<NavigationMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: widget.myIndex,
        children: widget.widgetList,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
        ),
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
            child: GNav(
                backgroundColor: Colors.black,
                color: Colors.white,
                activeColor: Colors.white,
                tabBackgroundColor: Color(0xff2475ee),
                padding: const EdgeInsets.all(16),
                gap: 8,
                tabs: const [
                  GButton(icon: Icons.home_filled, text: 'Home' ),
                  GButton(icon: Icons.directions_train_rounded, text: 'Discover'),
                  GButton(icon: Icons.history_outlined, text: 'B-History'),
                  GButton(icon: Icons.person, text: 'Profile'),
                ],
                selectedIndex: widget.myIndex,
                onTabChange: (index) {
                  setState(() {
                    widget.myIndex = index;
                  });
                }
            ),
          ),
        ),
      ),
    );
  }
}
