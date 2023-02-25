
import 'package:flutter/material.dart';
import 'package:graduation_project/pages/Home_page.dart';
import 'package:graduation_project/new_color/New_Color.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex=0;
  final screens= [
   HomePage(),
   HomePage(),
   // HomePage(),
   // HomePage(),
   HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children:screens,
        ),
        bottomNavigationBar:
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor:NewColor.mint,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          currentIndex: currentIndex,
          showSelectedLabels: false,
          onTap: (index)=>setState(()=> currentIndex=index),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Notification" ),
            // BottomNavigationBarItem(icon: CircleAvatar(backgroundImage:AssetImage("lib/assets/images/img_7.png"),),label: "Location" ),
            // BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Calendar" ),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile" ),
          ],),
      );
  }
}
