import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterxfirebase_1/login.dart';

import 'customfield/customfield.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            child: Text(
              'Sign Up',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text(
              "create an account it's free",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 255),
            child: Text(
              'Username',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
          Customfieldforsignup(),
          Padding(
            padding: const EdgeInsets.only(right: 290),
            child: Text(
              'Email',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
          Customfieldforsignup(),
          Padding(
            padding: const EdgeInsets.only(right: 260),
            child: Text(
              'Password',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
          Customfieldforsignup(),
          Padding(
            padding: const EdgeInsets.only(right: 200),
            child: Text(
              'Confirm Password',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
          ),
          Customfieldforsignup(),
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 40),
            child: Container(
              width: 300,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.blue,
                  border: Border.all(width: 1, color: Colors.black)),
              child: TextButton(
                  onPressed: (() {}),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(
                    onPressed: (() {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    }),
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
