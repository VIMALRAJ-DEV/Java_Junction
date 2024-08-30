import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:java_junction/functions.dart';

import 'otp_page.dart';

class ph_no extends StatelessWidget {
  const ph_no({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bgimage(child: p_no(), sigmax: 30, sigmay: 30),
    );
  }
}

class p_no extends StatelessWidget {
  const p_no({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: screenSize.height * 0.4,
        width: screenSize.width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),
          border: Border.all(color: Colors.brown, width: 5),
        ),
        child: ListView(
          children: [
            Center(
                child: Text(
              "Reset password",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold),
            )),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Divider(
                thickness: 3,
                color: Colors.brown,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  "please enter your phone number to receive a link to create a new password via phone number",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.brown,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            phonenumberfield("Phone number", CupertinoIcons.phone),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => phonenumber_VerificationPage()));
                },
                child: Text(
                  "send",
                  style: TextStyle(fontSize: 25, color: Colors.brown),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
