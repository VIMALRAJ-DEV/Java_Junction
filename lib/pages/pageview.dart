import 'package:flutter/material.dart';

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
      home: DefaultTabController(length: 4, child: Scaffold(
        bottomSheet: Container(
          //child: TabBar(tabs:),
        ),
        //body: TabBarView(children:),
      )),
    );
  }
}
