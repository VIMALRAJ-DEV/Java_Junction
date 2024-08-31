import 'package:flutter/material.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //appbar
        appBar: AppBar(
          leading: Builder(
            builder: (context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.sort),iconSize: 40,);
            }
          ),
          backgroundColor: Colors.white,
          title: Text(
            "Enjoy your \n Day With JAVA ",
            style: TextStyle(
                color: Colors.brown, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.brown,
                ))
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(70),
              child: Container(
                color: Colors.red,
              )),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.brown, // Change the background color
                ),
                accountName: Text("vimal"),
                accountEmail: Text("vimal@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              ListTile(
                title: Text("setting"),
                onTap: () {},
                leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
              ),
              Divider(height: 0.1),
              ListTile(
                title: Text("Marked"),
                onTap: () {},
                leading: CircleAvatar(
                  child: Icon(Icons.bookmark),
                ),
              ),
              Divider(height: 0.1),
              ListTile(
                title: Text("Logout"),
                onTap: () {},
                leading: CircleAvatar(
                  child: Icon(Icons.logout_outlined),
                ),
              ),
              Divider(height: 0.1),
            ],
          ),
        ),

        body: SingleChildScrollView(
          child: Row(
            children: [
              Container(
                height: 150,
                width: 150,
                color: Colors.blue,
                child: Center(child: Text("one")),
              ),
              Container(
                height: 150,
                width: 100,
                color: Colors.grey,
                child: Center(child: Text("two")),
              ),
              Container(
                height: 150,
                width: 100,
                color: Colors.red,
                child: Center(child: Text("three")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
