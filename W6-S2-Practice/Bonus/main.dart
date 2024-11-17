import 'package:flutter/material.dart';
import 'package:learning/W6-S2-Practice/Bonus/screen/temperature.dart';
import 'package:learning/W6-S2-Practice/Bonus/screen/welcome.dart';

class TemperatureApp extends StatefulWidget {
  const TemperatureApp({super.key});

  @override
  State<TemperatureApp> createState() {
    return _TemperatureAppState();
  }
}

class _TemperatureAppState extends State<TemperatureApp> {
  bool isStarted = false;

  void start() {
    setState(() {
      isStarted = true;
    });
  }
  
  @override
  Widget build(context) {

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff16C062),
                Color(0xff00BCDC),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: isStarted ? Temperature() : Welcome(switchScreen: start),
        ),
      ),
    );
  }
}

void main() {
  runApp(const TemperatureApp());
}
