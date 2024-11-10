import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom buttons"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StatefulButton(),
            StatefulButton(),
            StatefulButton(),
            StatefulButton()
          ],
        )),
      ),
    ));

class StatefulButton extends StatefulWidget {
  const StatefulButton({
    super.key,
  });

  @override
  State<StatefulButton> createState() => _StatefulButtonState();
}

class _StatefulButtonState extends State<StatefulButton> {
  bool _isSelected = false;

  void _toggleButton() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SizedBox(
        width: 400,
        height: 100,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: _isSelected ? Colors.blue : Color(0xffE4F2FD)),
            onPressed: _toggleButton,
            child: Center(
              child: Text(_isSelected ? "Selected" : "Not Selected",
                  style: TextStyle(
                      fontSize: 35,
                      color: _isSelected ? Colors.white : Colors.black)),
            )),
      ),
    );
  }
}
