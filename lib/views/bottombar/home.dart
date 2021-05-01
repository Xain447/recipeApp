import 'package:flutter/material.dart';
import 'package:recipeapp/views/bottombar/home_screen.dart';
import 'package:recipeapp/views/bottombar/profile_screen.dart';
import 'package:recipeapp/views/bottombar/wishlist_screen.dart';

class Home extends StatefulWidget {


  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List<Widget> tabs = [
    HomeScreen(),
    WishlistScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    tabs = [
      HomeScreen(),
      WishlistScreen(),
      ProfileScreen(),
    ];
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 8,
          unselectedFontSize: 6,
          showUnselectedLabels: true,
          elevation: 3,
          backgroundColor: Colors.green,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white,

          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },

        )
    );
  }

}