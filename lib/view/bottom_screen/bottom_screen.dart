import 'package:flutter/material.dart';
import 'package:youtube/view/create/create.dart';
import 'package:youtube/view/home_screen/home_screen.dart';
import 'package:youtube/view/library_screen/youtube_library.dart';
import 'package:youtube/view/shorts/shorts.dart';
import 'package:youtube/view/subscription/subscription.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List _screens = [
      home_screen(),
      shorts(index: selectedIndex),
      create(),
      subscription(),
      youtube_library(),
    ];
    return Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (value) {
            // if (
            //   index == 3
            //   )
            setState(() {
              // _openBottomSheet();
              selectedIndex = value;
            });
          },
          backgroundColor: Colors.black,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                activeIcon: Icon(Icons.explore),
                label: "shorts"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle_outline,
                  size: 30,
                ),
                activeIcon: Icon(
                  Icons.add_circle,
                  size: 30,
                ),
                label: "create"),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions_outlined),
                activeIcon: Icon(Icons.subscriptions),
                label: "Subscription"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined),
                activeIcon: Icon(Icons.video_library),
                label: "Library")
          ]),
    );
  }
}
