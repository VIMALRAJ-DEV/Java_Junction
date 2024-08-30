import 'dart:ui';

import 'package:flutter/material.dart';

//textfield
Widget textfield(String s1, IconData i1) {
  return TextFormField(
    cursorColor: Colors.brown,
    decoration: InputDecoration(
      labelText: s1,
      labelStyle: TextStyle(color: Colors.brown),
      prefixIcon: Icon(
        color: Colors.brown,
        i1,
        size: 30,
      ),
    ),
    style: TextStyle(color: Colors.brown),
  );
}

//password
Widget password(String s1,IconData i1,IconData i2,) {
  return TextFormField(
    cursorColor: Colors.brown,
    decoration: InputDecoration(
      focusedBorder: InputBorder.none,
      suffixIcon: IconButton(
        icon: Icon(i2),
        onPressed: () {},
      ),
      labelText: s1,
      labelStyle: TextStyle(color: Colors.brown, fontSize: 20),
      prefixIcon: Icon(
        color: Colors.brown,
        i1,
        size: 30,
      ),
    ),
    style: TextStyle(color: Colors.brown),
  );
}

// phonenumber text field

Widget phonenumberfield(String s1,IconData i1,) {
  return TextFormField(
    cursorColor: Colors.brown,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      //focusedBorder: InputBorder.none,
      labelText: s1,
      labelStyle: TextStyle(color: Colors.brown, fontSize: 20),
      prefixIcon: Icon(
        color: Colors.brown,
        i1,
        size: 30,
      ),
    ),
    style: TextStyle(color: Colors.brown),
  );
}
//background image

Widget bgimage({required Widget child, required double sigmax, required double sigmay}) {
  return Container(
    padding: EdgeInsets.only(top: 0, bottom: 0),
    decoration: BoxDecoration(
        image: DecorationImage(
      image: AssetImage('assets/s_screen.jpg'),
      fit: BoxFit.fill,
    )),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: sigmax, sigmaY: sigmay),
      child: Container(
        color: Colors.black.withOpacity(0),
        child: child,
      ),
    ),
  );
}
