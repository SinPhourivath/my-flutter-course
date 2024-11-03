import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text("My Hobbies"),
    ),
    body: Container(
      color: Colors.grey,
      padding: EdgeInsets.all(40),
      child:
          Column(children: <Widget>[
        HobbyCard(
            icon: Icons.travel_explore,
            title: "Travelling",
            color: Colors.green),
        HobbyCard(
            icon: Icons.skateboarding,
            title: "Skating",
            color: Colors.blueGrey),
        HobbyCard(icon: Icons.food_bank, title: "Dining"),
      ]),
    ),
  )));
}

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color? color;

  const HobbyCard(
      {super.key,
      required this.title,
      required this.icon,
      this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: Colors.white,
            ),
            SizedBox(width: 20),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
