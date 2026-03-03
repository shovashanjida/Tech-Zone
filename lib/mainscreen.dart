import 'package:flutter/material.dart';

import 'activitypage.dart';
import 'cartpage.dart';
import 'homepage.dart';
import 'pcbuilderpage.dart';
import 'products/laptop.dart';
import 'profilepage.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  final pages = [
    HomePage(),
    ActivityPage(),
    PCBuilderPage(),
    CartPage(),
    ProfilePage(),
    Laptop(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('TechZone'),
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,),
      body: pages[index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
          onDestinationSelected: (value){
            setState(() {
            index=value;
        });
      },
          indicatorColor: Colors.blueGrey,
          destinations: [
        NavigationDestination(
            icon: Image.asset("assets/icons/home.png",width: 25,),
            label: "Home"),
        NavigationDestination(
            icon: Image.asset("assets/icons/activity.png",width: 29,),
            label: "Activity"),
        NavigationDestination(
            icon: Image.asset("assets/icons/pc-builder.png",width: 25,),
            label: "PC Builder"),
        NavigationDestination(
            icon: Image.asset("assets/icons/cart.png",width: 30,),
            label: "cart"),
        NavigationDestination(icon: Image.asset("assets/icons/user-profile.png",width: 25,),
            label: "Profile"),
      ]),
    );
  }
}