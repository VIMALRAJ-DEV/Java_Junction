import 'package:flutter/material.dart';

class ColdCoffee extends StatefulWidget {
  const ColdCoffee({super.key});

  @override
  State<ColdCoffee> createState() => _HotCoffeeState();
}

class _HotCoffeeState extends State<ColdCoffee> {
  @override
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

  Widget build(BuildContext context) {
    return GridView.count(
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
    );
  }
}
