import 'package:flutter/material.dart';
import 'package:java_junction/functions.dart';

//mail page

class mail_VerificationPage extends StatelessWidget {
  const mail_VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bgimage(child: mail_Verification(), sigmax: 20, sigmay: 20),
    );
  }
}

class mail_Verification extends StatelessWidget {
  @override
  Widget _buildCodeInputBox() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.brown),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: TextField(
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, color: Colors.brown),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            border: InputBorder.none,
            counterText: '',
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.mail_outline,
              size: 80.0,
              color: Colors.brown,
            ),
            SizedBox(height: 20),
            Text(
              'Please check your email',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "We've sent a code to email",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildCodeInputBox(),
                _buildCodeInputBox(),
                _buildCodeInputBox(),
                _buildCodeInputBox(),
              ],
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text(
                "Didn't get the code? Click to resend.",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: Colors.brown),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle verify action
                  },
                  child: Text(
                    "Verify",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//phone page


class phonenumber_VerificationPage extends StatelessWidget {
  const phonenumber_VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        bgimage(child: phonenumber_Verification(), sigmax: 20, sigmay: 20));
  }
}

class phonenumber_Verification extends StatelessWidget {
  @override
  Widget _buildCodeInputBox() {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.brown),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: TextField(
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, color: Colors.brown),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            border: InputBorder.none,
            counterText: '',
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.sms_outlined,
              size: 80.0,
              color: Colors.brown,
            ),
            SizedBox(height: 20),
            Text(
              'Please check your sms',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "We've sent a code to sms",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildCodeInputBox(),
                _buildCodeInputBox(),
                _buildCodeInputBox(),
                _buildCodeInputBox(),
              ],
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text(
                "Didn't get the code? Click to resend.",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: Colors.brown),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle verify action
                  },
                  child: Text(
                    "Verify",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
