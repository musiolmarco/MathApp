import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final Function pressed;
  final String displayValue;
  final Color color;

  CalculatorButton({@required this.pressed, @required this.displayValue, @required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
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
                color: Colors.white,
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
