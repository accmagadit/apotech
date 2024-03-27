import 'package:apotech/cart.dart';
import 'package:apotech/home.dart';
import 'package:apotech/profil.dart';
import 'package:flutter/material.dart';

class AppHome extends StatefulWidget {
  static const routename = '/app';
  const AppHome({super.key});

  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int _selectedIndex = 0;

  // List of widgets for each tab
  final List<Widget> _tabs = [
    const Home(),
    const Home(),
    const Home(),
    const Cart(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _tabs[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/bottom_app_bar/home.png'),
              activeIcon: Image.asset('assets/bottom_app_bar/home_active.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/bottom_app_bar/notification.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/bottom_app_bar/add.png'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/bottom_app_bar/cart.png'), 
              activeIcon: Image.asset('assets/bottom_app_bar/cart.png'), 
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/bottom_app_bar/profile.png'),
              activeIcon:
                  Image.asset('assets/bottom_app_bar/profil_active.png'),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index) {
            // Change the selected tab
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
    );
  }
}
