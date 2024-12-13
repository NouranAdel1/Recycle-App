import 'package:flutter/material.dart';
import 'package:myapp/events_page.dart';
import 'package:myapp/location_screen.dart';
import 'package:myapp/profile_page.dart';
import 'package:myapp/recycle_main_page.dart';
import 'package:myapp/trash_add.dart';

class NaviBarPage extends StatefulWidget {
  const NaviBarPage({super.key});

  @override
  State<NaviBarPage> createState() => _NaviBarPageState();
}

class _NaviBarPageState extends State<NaviBarPage> {
  int _selectedIndex = 0; // Track which bottom nav item is selected

  // List of screens to navigate between
  final List<Widget> _screens = [
    RecycleMainPage(),
    LocationScreen(),
    TrashAdd(),
    EventsPage(),
    ProfilePage(),
  ];

  // Handle bottom nav tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      // Floating action button (centered add button)
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     // Action for the "Big Circle Add" button
      //     print("Big Circle Add Button Pressed");
      //   },
      //   child: Icon(Icons.add, size: 40),
      //   backgroundColor: Colors.blue,
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped, // Update screen on tab selection
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_rounded,
              size: 50,
              color: Colors.green,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              size: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              size: 30,
            ),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
