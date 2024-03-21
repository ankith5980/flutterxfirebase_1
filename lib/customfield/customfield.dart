import 'package:flutter/material.dart';

class Customfieldforsignup extends StatefulWidget {
  const Customfieldforsignup({super.key});

  @override
  State<Customfieldforsignup> createState() => _CustomfieldforsignupState();
}

class _CustomfieldforsignupState extends State<Customfieldforsignup> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 3),
          borderRadius: BorderRadius.circular(18),
        ),
        child: TextField(
          decoration: InputDecoration(
            labelStyle: const TextStyle(color: Colors.white),
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
          ),
        ),
      ),
    );
    ;
  }
}
