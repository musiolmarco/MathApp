import 'package:flutter/material.dart';

class CalculatorDisplay extends StatefulWidget {
  @override
  _CalculatorDisplayState createState() => _CalculatorDisplayState();
}

class _CalculatorDisplayState extends State<CalculatorDisplay> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            '0',
            style: TextStyle(
              fontSize: 60,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
