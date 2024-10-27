import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text("Hello, Rivath!",
            style: TextStyle(color: Colors.orange, fontSize: 50)),
      ),
    ),
  ));
}
