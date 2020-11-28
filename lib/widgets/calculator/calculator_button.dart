import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {

  final Function pressed;
  final String displayValue;

  CalculatorButton({@required this.pressed, @required this.displayValue});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => pressed(),
        child: Container(
          color: Colors.white,
          child: Text(displayValue, style: TextStyle(
            color: Colors.black,
          ),),
        ),
    );
  }
}
