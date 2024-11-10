import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          ScoreCard(title: "My Score in Dart"),
          ScoreCard(title: "My Score in Flutter"),
          ScoreCard(title: "My Score in Firebase"),
        ],
      ),
    ),
  ));
}

class ScoreCard extends StatefulWidget {
  const ScoreCard({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<ScoreCard> createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  double score = 0.0;

  void decreaseScore() {
    setState(() {
      score = score - 0.1;
      score = max(0, min(1, score));
    });
  }

  void increaseScore() {
    setState(() {
      score = score + 0.1;
      score = max(0, min(1, score));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              widget.title,
              style: TextStyle(fontSize: 25),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.remove),
                  tooltip: "Decrease score",
                  onPressed: decreaseScore,
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  tooltip: "Increase score",
                  onPressed: increaseScore,
                )
              ]),
          Container(
            height: 75.0,
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: LinearProgressIndicator(value: score)),
          ),
        ],
      )),
    );
  }
}
