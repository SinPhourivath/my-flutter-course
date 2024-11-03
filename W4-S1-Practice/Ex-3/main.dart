import 'package:flutter/material.dart';

enum IconPosition { left, right }

enum ButtonType {
  primary(color: Colors.blue),
  secondary(color: Colors.green),
  disabled(color: Colors.grey);

  final Color color;

  const ButtonType({required this.color});
}

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text("Custom buttons"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CustomButton(label: "Submut", iconData: Icons.check),
            CustomButton(label: "Time", iconData: Icons.access_time, buttonType: ButtonType.secondary),
            CustomButton(label: "Account", iconData: Icons.account_tree, buttonType: ButtonType.disabled, iconPosition: IconPosition.right),
          ]),
    ),
  )));
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.label,
      required this.iconData,
      this.iconPosition = IconPosition.left,
      this.buttonType = ButtonType.primary});

  final String label;
  final IconData iconData;
  final IconPosition iconPosition;
  final ButtonType buttonType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: buttonType.color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: iconPosition == IconPosition.left
              ? [
                  Icon(iconData, color: Colors.black54),
                  const SizedBox(width: 10),
                  Text(label, style: TextStyle(color: Colors.black54)),
                ]
              : [
                  Text(label, style: TextStyle(color: Colors.black54)),
                  const SizedBox(width: 10),
                  Icon(iconData, color: Colors.black54),
                ],
        ),
      ),
    );
  }
}
