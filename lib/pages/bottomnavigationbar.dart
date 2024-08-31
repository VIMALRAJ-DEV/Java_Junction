import 'package:flutter/material.dart';
import 'home_pages/home_page.dart';

//bottom navigation bar

class login_view extends StatefulWidget {
  const login_view({super.key});

  @override
  State<login_view> createState() => _login_viewState();
}

class _login_viewState extends State<login_view> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            bottomNavigationBar: TabBar(
                labelColor: Colors.brown,
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.brown,
                tabs: [
                  Tab(
                    icon: Icon(Icons.home_filled),
                  ),
                  Tab(
                    icon: Icon(Icons.favorite),
                  ),
                  Tab(
                    icon: Icon(Icons.shopping_cart_sharp),
                  ),
                ]),
            body:
                TabBarView(physics: NeverScrollableScrollPhysics(), children: [
              Center(
                child: Container(
                  child: home_page(),
                ),
              ),
              Center(
                child: Container(
                  child: Text("two"),
                ),
              ),
              Center(
                child: Container(
                  child: Text("three"),
                ),
              ),
            ]),
          )),
    );
  }
}
