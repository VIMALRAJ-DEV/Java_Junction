import 'package:flutter/material.dart';
import 'package:java_junction/pages/bottomnavigation_pages/search_page/search_page.dart';
import 'cart_page.dart';
import 'favourite_page.dart';
import 'homepage/home_page.dart';


// Bottom navigation bar

class login_view extends StatefulWidget {
  const login_view({super.key});

  @override
  State<login_view> createState() => _LoginViewState();
}

class _LoginViewState extends State<login_view> {
  int _selectedIndex = 0;
  static List<Widget> _pages = <Widget>[
    homePage(),
    search_page(),
    cart_page(),
    fav_page(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pages[_selectedIndex], // Display the selected page
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.brown,
          backgroundColor: Color(0xff320606),
          type: BottomNavigationBarType.fixed,
          iconSize: 20,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_outlined), label: 'search'),

            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            )
            // BottomNavigationBarItem(icon: Icon(Icons.search_outlined))
          ],
        ),
      ),
    );
  }
}
