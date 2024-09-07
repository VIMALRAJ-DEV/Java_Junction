import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../login_details/j_loginpage.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  //drawer icon
  Widget drawericon(String iconname, IconData icon, Widget page) {
    return ListTile(
      title: Text(iconname),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      leading: CircleAvatar(
        backgroundColor: Color(0xff561d00),
        child: Icon(
          color: Colors.white,
          icon,
        ),
      ),
    );
  }

  //banner
  Widget banner() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25), // Apply the border radius
      child: InkWell(
        onTap: () {},
        child: Image.asset(
          'assets/bg.png', // Replace with your image path
          width: 340,
          height: 180,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  //lists

  List img = [
    'Black Coffee.png',
    'Cold Coffee.png',
    'Black Coffee.png',
    'Cold Coffee.png',
    'Black Coffee.png',
    'Cold Coffee.png',
    'Black Coffee.png',
    'Cold Coffee.png',
    'facebook.jpeg'
  ];
  List img_name = [
    'Black Coffee',
    'Cold Coffee',
    'Black Coffee',
    'Cold Coffee',
    'Black Coffee',
    'Cold Coffee',
    'Black Coffee',
    'Cold Coffee',
    'facebook'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //appbar
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.sort),
              iconSize: 40,
            );
          },
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Enjoy your \n Day With JAVA ",
          style: TextStyle(
              color: Color(0xff561d00),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Color(0xff561d00),
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              onChanged: (value) {},
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: Color(0xff561d00),
                ),
                hintText: "Search...",
                fillColor: Color(0xff561d00),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide:
                      (BorderSide(color: Color(0xff561d00), width: 3.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Color(0xff561d00), width: 4.0),
                ),
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff561d00), // Change the background color
              ),
              accountName: Text("vimal"),
              accountEmail: Text("vimal@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: ClipOval(
                  child: Image(
                    image: AssetImage(
                      'assets/bg.png',
                    ),
                    height: 70,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Spacer(),
            drawericon("Profile", Icons.person_outlined, j_loginpage()),
            drawericon("Settings", Icons.settings, j_loginpage()),
            drawericon("Myorder", Icons.shopping_bag_outlined, j_loginpage()),
            drawericon(
                "Help&Feedback", Icons.help_outline_outlined, j_loginpage()),
            drawericon(
                "Payment Details", Icons.payments_outlined, j_loginpage()),
            drawericon("About us", CupertinoIcons.info, j_loginpage()),
            Spacer(),
            Divider(height: 0.1),
            ListTile(
              title: Text("Logout"),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => j_loginpage()),
                    (rou) => false);
              },
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.logout_outlined, color: Color(0xff561d00)),
              ),
            ),
          ],
        ),
      ),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.local_offer_outlined,
                color: Color(0xff561d00),
                size: 20,
              ),
              Text(
                " Daily Offers",
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff561d00),
                    fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: Color(0xff8a2b04),
                    ),
                  ))
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: banner(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: banner(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: banner(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: banner(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: banner(),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Color(0xff561d00),
                size: 20,
              ),
              Text(
                " Nearby Shop",
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff561d00),
                    fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      color: Color(0xff8a2b04),
                    ),
                  ))
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: banner(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: banner(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: banner(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: banner(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: banner(),
              ),
            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(8),child:Row(

          children: [
            Icon(
              Icons.coffee_outlined,
              color: Color(0xff561d00),
              size: 20,
            ),
            Text(
              " Coffees",
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff561d00),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),),


        GridView.count(
          physics: ScrollPhysics(),
          crossAxisCount: 2,
          shrinkWrap: true,
          childAspectRatio: (150 / 195),
          children: [
            for (int i = 0; i < img.length; i++)
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 13),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 8)
                    ]),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "assets/${img[i]}",
                        width: 120,
                        height: 120,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 8),
                      child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(img_name[i],
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)),

                    )
                  ],
                ),
              )
          ],
        )
      ]),
    );
  }
}

// import 'package:flutter/material.dart';
//
// class home_page extends StatefulWidget {
//   const home_page({super.key});
//
//   @override
//   State<home_page> createState() => _home_pageState();
// }
//
// class _home_pageState extends State<home_page> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           leading: Builder(builder: (context) {
//             return IconButton(
//               onPressed: () {
//                 Scaffold.of(context).openDrawer();
//               },
//               icon: Icon(Icons.sort),
//               iconSize: 40,
//             );
//           }),
//           backgroundColor: Colors.white,
//           title: Text(
//             "Enjoy your \n Day With JAVA ",
//             style: TextStyle(
//                 color: Colors.brown, fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           actions: [
//             IconButton(
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.notifications_active_outlined,
//                   color: Colors.brown,
//                 ))
//           ],
//           bottom: PreferredSize(
//               preferredSize: Size.fromHeight(70),
//               child: Container(
//                 color: Colors.red,
//               )),
//         ),
//         drawer: Drawer(
//           child: Column(
//             children: [
//               UserAccountsDrawerHeader(
//                 decoration: BoxDecoration(
//                   color: Color(0xff320606), // Background color
//                 ),
//                 accountName: Text("vimal"),
//                 accountEmail: Text("vimal@gmail.com"),
//                 currentAccountPicture: CircleAvatar(
//                   backgroundColor: Colors.white,
//                 ),
//               ),
//               InkWell(
//                 splashColor: Colors.grey, // Tap color
//                 highlightColor: Colors.brown.withOpacity(0.5), // Highlight color when tapped
//                 child: ListTile(
//                   title: Text("Settings"),
//                   onTap: () {
//                     // Handle tap
//                   },
//                   leading: CircleAvatar(
//                     child: Icon(Icons.settings),
//                   ),
//                 ),
//               ),
//               Divider(height: 0.1),
//               InkWell(
//                 splashColor: Colors.grey,
//                 highlightColor: Colors.brown.withOpacity(0.5),
//                 child: ListTile(
//                   title: Text("Marked"),
//                   onTap: () {
//                     // Handle tap
//                   },
//                   leading: CircleAvatar(
//                     child: Icon(Icons.bookmark),
//                   ),
//                 ),
//               ),
//               Divider(height: 0.1),
//               InkWell(
//                 splashColor: Colors.grey,
//                 highlightColor: Colors.brown.withOpacity(0.5),
//                 child: ListTile(
//                   title: Text("Logout"),
//                   onTap: () {
//                     // Handle tap
//                   },
//                   leading: CircleAvatar(
//                     child: Icon(Icons.logout_outlined),
//                   ),
//                 ),
//               ),
//               Divider(height: 0.1),
//             ],
//           ),
//         ),
//         body: SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               Container(
//                 height: 150,
//                 width: 150,
//                 color: Colors.blue,
//                 child: Center(child: Text("one")),
//               ),
//               Container(
//                 height: 150,
//                 width: 100,
//                 color: Colors.grey,
//                 child: Center(child: Text("two")),
//               ),
//               Container(
//                 height: 150,
//                 width: 100,
//                 color: Colors.red,
//                 child: Center(child: Text("three")),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
