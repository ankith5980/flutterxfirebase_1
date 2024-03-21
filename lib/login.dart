import 'package:flutter/material.dart';
import 'package:flutterxfirebase_1/signup.dart';
import 'customfield/customfield.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),
              Text("login to your Account"),
              Padding(
                padding: const EdgeInsets.only(right: 290, top: 30),
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ),
              Customfieldforsignup(),
              SizedBox(
                height: 30,
              ),
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
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 300,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.blue,
                    border: Border.all(width: 1, color: Colors.black)),
                child: TextButton(
                    onPressed: (() {}),
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account..?"),
                  TextButton(
                      onPressed: (() {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signup(),
                            ));
                      }),
                      child: Text(
                        "Register",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      )),
                ],
              ),
              Expanded(child: Image.asset('assets/images/unnamed.webp'))
            ],
          ),
        ),
      ),
    );
  }
}
