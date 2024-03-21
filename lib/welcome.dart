import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterxfirebase_1/signup.dart';

import 'login.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Text("Flutter provides extraordinary flutter tutorial"),
            Expanded(flex: 4, child: Image.asset('assets/images/images.jpeg')),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 320,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.black)),
              child: TextButton(
                  onPressed: (() {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ));
                  }),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 320,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Colors.blue,
                  border: Border.all(width: 1, color: Colors.black)),
              child: TextButton(
                  onPressed: (() {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Signup(),
                        ));
                  }),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
