import 'package:flutter/material.dart';
import 'package:java_junction/functions.dart';
import 'phone_number.dart';
import 'mail_id.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bgimage(child: Option(), sigmax: 20, sigmay: 20),

    );
  }
}

class Option extends StatelessWidget {
  const Option({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: screenSize.width * 0.7,
        height: screenSize.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),
          border: Border.all(color: Colors.brown, width: 5),
        ),
        child: ListView(children: [
          Center(
            child: Text(
              "Otp Option",
              style: TextStyle(fontSize: 25, color: Colors.brown),
            ),
          ),
          Divider(
            color: Colors.brown,
            thickness: 3,
            indent: 50,
            endIndent: 50,
          ),
          Padding(
            padding: EdgeInsets.only(top: screenSize.height * 0.04, left: screenSize.width * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.sms_outlined),
                SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ph_no()),
                    );
                  },
                  child: Text(
                    "SMS",
                    style: TextStyle(fontSize: 25, color: Colors.brown),
                  ),
                  style: TextButton.styleFrom(foregroundColor: Colors.brown),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: screenSize.width * 0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                Icon(Icons.mail_outline_outlined),
                SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => mail_id()),
                    );
                  },
                  child: Text(
                    "Mail ID",
                    style: TextStyle(fontSize: 25, color: Colors.brown),
                  ),
                  style: TextButton.styleFrom(foregroundColor: Colors.brown),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
