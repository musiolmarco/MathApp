import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {

  final Function pressed;
  final String displayValue;
  final Color color;
  final Color textColor;

  CalculatorButton({@required this.pressed, @required this.displayValue, @required this.color, @required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 75,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: GestureDetector(
        onTap: () => pressed(),
        child: Container(
          child: Center(
            child: Text(
              displayValue,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
