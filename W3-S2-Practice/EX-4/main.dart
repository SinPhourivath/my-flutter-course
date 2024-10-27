import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Container(
      padding: const EdgeInsets.all(40),
      child: const Column(children: <Widget>[
        CustomCard(text: "OOP", color: Color(0xffBBDEFB)),
        CustomCard(text: "DART"),
        CustomCard(text: "Flutter", gradient: LinearGradient(colors: [Color(0xff1E88E5), Color(0xff2D0863)]))
      ]),
    ),
  ));
}

class CustomCard extends StatelessWidget {
  final String text;
  final Color color;
  final Gradient? gradient;

  const CustomCard({super.key, required this.text, this.color = Colors.blue, this.gradient});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: gradient == null ? color : null,
            gradient: gradient,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                decoration: TextDecoration.none),
          ),
        ));
  }
}
