import 'dart:ui';
import 'package:flutter/material.dart';
import '../pages/bottomnavigationbar.dart';

import 'forgotpassword/con_button.dart';
import 'j_signuppage.dart';

class j_loginpage extends StatefulWidget {
  const j_loginpage({super.key});

  @override
  State<j_loginpage> createState() => _j_loginpageState();
}

class _j_loginpageState extends State<j_loginpage> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  Widget buildUsername() {
    return TextFormField(
      cursorColor: Colors.brown,
      decoration: InputDecoration(
        labelText: 'Username',
        labelStyle: TextStyle(color: Colors.brown),
        prefixIcon: Icon(
          Icons.account_circle_sharp,
          color: Colors.brown,
          size: 40,
        ),
      ),
      style: TextStyle(color: Colors.brown),
    );
  }

  Widget buildPassword() {
    return TextFormField(
      cursorColor: Colors.brown,
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(color: Colors.brown),
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.brown,
          size: 40,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: _toggleVisibility,
        ),
      ),
      style: TextStyle(color: Colors.brown),
      obscureText: _obscureText, // Make this field obscure for passwords
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned.fill(
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Background image
                Image.asset(
                  "assets/s_screen.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
                // Blur effect
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ),
                ),
                Positioned(
                  top: 150,
                  right: 140,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ),
                Positioned(
                  top: 250,
                  left: 35,
                  child: Container(
                    width: screenSize.width * 0.8,
                    height: screenSize.height * 0.7,
                    child: Column(
                      children: [
                        buildUsername(),
                        const SizedBox(height: 20),
                        buildPassword(),
                        const SizedBox(height: 30),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 420,
                    right: 130,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => login_view()),
                        );
                      },
                      child: Text(
                        'Log In Now',
                        style: TextStyle(fontSize: 19),
                      ),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.brown,
                      ),
                    )),
                Positioned(
                    top: 470,
                    right: 70,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Otp()),
                        );
                      },
                      child: Text(
                        'Forgot your password ?',
                        style: TextStyle(fontSize: 19),
                      ),
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.brown,
                      ),
                    )),
                Positioned(
                  top: 550,
                  right: 150,
                  child: Text(
                    "or LoginWith",
                    style: TextStyle(color: Colors.brown),
                  ),
                ),
                Positioned(
                    bottom: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/google.jpeg',
                            width: 50.0,
                            height: 50.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/facebook.jpeg',
                            width: 50.0,
                            height: 50.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/x.png',
                            width: 50.0,
                            height: 50.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )),
                Positioned(
                  bottom: 60,
                  right: 60,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Don't Have An Account?",
                        style: TextStyle(color: Colors.brown),
                      ),
                      SizedBox(width: 5),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => sign_up()),
                          );
                        },
                        child: Text(
                          'SignUp',
                          style: TextStyle(fontSize: 19),
                        ),
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.brown,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
