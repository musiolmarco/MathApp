import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final Function pressed;
  final String displayValue;
  final Color color;
  final Color textColor;

  CalculatorButton(
      {@required this.pressed,
      @required this.displayValue,
      @required this.color,
      @required this.textColor});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final heigth = MediaQuery.of(context).size.height;

    return Container(
      height: heigth * 0.105,
      width: width * 0.2,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          onTap: () => pressed(),
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
        color: Colors.transparent,
      ),
    );
  }
}
