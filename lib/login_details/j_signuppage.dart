import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:java_junction/functions.dart';
import 'j_loginpage.dart';

class sign_up extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: bgimage(child: one(), sigmax: 7, sigmay: 7));
  }
}

class one extends StatelessWidget {
  const one({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Center(
      child: Container(
        width: screenSize.width * 0.8,
        height: screenSize.height * 0.8,
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.only(
            top: screenSize.height * 0.04,
          ),
          child: ListView(
            shrinkWrap: false,
            children: [
              Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(color: Colors.brown, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield("Name", Icons.person_outline),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield("Gmail", CupertinoIcons.mail),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: phonenumberfield("Mobile No", CupertinoIcons.phone),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: textfield("Address", CupertinoIcons.home),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: password("password", Icons.password_outlined,
                      Icons.visibility_outlined)),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: password(" Confrim password", Icons.password_outlined,
                      Icons.visibility_outlined)),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontSize: 20, color: Colors.brown),
                    ),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.brown,
                    ),
                  )),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an Account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => j_loginpage()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(fontSize: 25, color: Colors.brown),
                        ),
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.brown,
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
