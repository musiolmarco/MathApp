import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final Function pressed;
  final String displayValue;

  CalculatorButton({@required this.pressed, @required this.displayValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: new Color.fromRGBO(255, 255, 255, 0.3),
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
