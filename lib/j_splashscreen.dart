import 'package:flutter/material.dart';
import 'dart:async';
import 'login_details/j_loginpage.dart';

class j_splashscreen extends StatefulWidget {
  @override
  _j_splashscreenState createState() => _j_splashscreenState();
}

class _j_splashscreenState extends State<j_splashscreen> {
  @override
  //timer funcion

  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => j_loginpage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 0, bottom: 0),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/s_screen.jpg'),
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}
