import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Hot_coffee.dart';
import 'cold_coffee.dart';
class search_page extends StatefulWidget {
  const search_page({super.key});

  @override
  State<search_page> createState() => _search_pageState();
}

class _search_pageState extends State<search_page> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(200),
              child: AppBar(
                backgroundColor: Color(0xff430b02),
                // flexibleSpace:
                // Image.asset(
                //   'assets/bg.png', // Replace with your asset image path
                //   fit: BoxFit.cover,
                //  color:  Color(0xff430b02),
                //
                // ),
                centerTitle: true,
                title: Center(
                  child: Row(
                    children: [
                      Text(" Explore",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      Icon(Icons.coffee, size: 30.0, color: Colors.white),

                    ],
                  ),
                ),
                flexibleSpace: Center(
                  child: Container(
                    width: 300,
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon:
                            Icon(Icons.search_outlined, color: Colors.black),
                        suffixIcon: Icon(Icons.keyboard_voice_outlined,
                            color: Colors.black),
                        hintText: "Search...",
                        hintStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              BorderSide(color: Color(0xff561d00), width: 5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
                bottom: TabBar(
                    controller: _tabController,
                    labelColor: Colors.white,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.white,
                    labelStyle: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    unselectedLabelStyle: TextStyle(fontSize: 14.0),
                    physics: FixedExtentScrollPhysics(),
                    tabs: [
                      Tab(
                        text: "Hot Coffee",
                        icon: Icon(Icons.coffee),
                      ),
                      Tab(
                        text: "Cold Coffee",
                        icon: Icon(
                          Icons.coffee_maker,
                        ),
                      ),
                    ]),
              ),
            ),
            body: TabBarView(controller: _tabController, children: [
              Center(child: HotCoffee()),
              Center(child: ColdCoffee()),
            ]),
          )),
    );
  }
}
