import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Container(
      padding: const EdgeInsets.all(40),
      child: Column(children: <Widget>[
        Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
                color: Color(0xffBBDEFB),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: const Center(
              child: Text(
                "OOP",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    decoration: TextDecoration.none),
              ),
            )),
        Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
                color: Color(0xff1E88E5),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: const Center(
              child: Text(
                "DART",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    decoration: TextDecoration.none),
              ),
            )),
        Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff1E88E5), Color(0xff2D0863)]),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: const Center(
              child: Text(
                "FLUTTER",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    decoration: TextDecoration.none),
              ),
            )),
      ]),
    ),
  ));
}
