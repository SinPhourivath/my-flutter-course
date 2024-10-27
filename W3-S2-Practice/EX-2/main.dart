import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Container(
      color: const Color(0xff64B5F6),
      margin: const EdgeInsets.all(50),
      padding: const EdgeInsets.all(40),
      child: Container(
          decoration: const BoxDecoration(
            color: Color(0xff1E88E5),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: const Center(
            child: Text(
              "CADT STUDENTS",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                decoration: TextDecoration.none,
              ),
            ),
          )),
    ),
  ));
}
