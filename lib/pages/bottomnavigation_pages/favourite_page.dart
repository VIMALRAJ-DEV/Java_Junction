import 'package:flutter/material.dart';

class fav_page extends StatefulWidget {
  const fav_page({super.key});

  @override
  State<fav_page> createState() => _fav_pageState();
}

class _fav_pageState extends State<fav_page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.red,
          height: 100,
          width: 100,
          child: Text("hii"),
        ),
      ),
    );
  }
}
