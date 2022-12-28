import 'package:downwork/screens/dashboardscreen/NotificationScreen.dart';
import 'package:downwork/screens/dashboardscreen/ProfileScreen.dart';
import 'package:downwork/screens/dashboardscreen/SearchScreen.dart';
import 'package:downwork/screens/widgets/AppColors.dart';
import 'package:flutter/material.dart';

import 'dashboardscreen/Homepage.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  List<Widget> lstbottomScreen = [
    const HomepageScreen(),
    const NotificationScreen(),
    const SearchScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom navigation bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.man), label: "profile"),
        ],
        backgroundColor: primarycolor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: lstbottomScreen[_selectedIndex],
    );
  }
}
