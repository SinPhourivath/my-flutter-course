import 'package:flutter/material.dart';

// Q1 - In what scenarios might one approach be more advantageous than another?
//      (in terms of readability, maintainability, performance, etc.)?

// Answer:

// For loop
// Good in term of readability, because the syntax is easy to understand
// Loop in Dart is fast enough for iterating on the list

// Map
// Map syntax might not be a problem, but the spread operator "..." will likely confuse people
// Map is faster compared to for loop and it's what mmost people prefer
// Source I get this from: https://medium.com/full-struggle-developer/flutter-benchmark-for-loop-vs-map-which-one-is-faster-75c8225c4b19

// Dedicate function
// Good for reusability

List<String> colors = ["red", "blue", "green"];

List<Widget> getLabels(List<String> data) {
  return data.map((item) => Text(item)).toList();
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Label("Method 1: Loop in Array", bold: true),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [for (var color in colors) Text(color)],
            ),
            Label("Method 2: Map", bold: true),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...colors.map((color) => Text(color)),
              ],
            ),
            Label("Method 23: Dedicated Function", bold: true),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...getLabels(colors)
              ],
            ),
          ],
        ),
      ),
    ),
  ));
}

class Label extends StatelessWidget {
  const Label(this.text, {super.key, this.bold = false});

  final bool bold;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontWeight: (bold ? FontWeight.bold : FontWeight.normal)),
    );
  }
}
