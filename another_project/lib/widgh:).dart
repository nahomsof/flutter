import 'package:flutter/material.dart';

void main() {
  runApp(Currentap());
}

class Currentap extends StatelessWidget {
  Currentap({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _MyHomepage(),
    );
  }
}

class _MyHomepage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[400],
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: buildColumn(context),
      ),
    );
  }
}

Widget buildTitleText() {
  return Text(
    "My Pet Shop",
    textScaleFactor: 3.0,
    textAlign: TextAlign.center,
  );
}

Widget buildRoundedBox(String label, {double height = 88.0}) {
  return Container(
    height: height,
    width: 88.0,
    alignment: Alignment(0.0, 0.0),
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10.0)),
    child: Text(
      label,
      textAlign: TextAlign.center,
    ),
  );
}

Widget buildColumn(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      buildTitleText(),
      SizedBox(
        height: 20,
      ),
      buildRoundedBox("Sale Today", height: 150.0)
    ],
  );
}
