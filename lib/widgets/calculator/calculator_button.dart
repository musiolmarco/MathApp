import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final Function pressed;
  final String displayValue;
  final Color backgroundColor;

  CalculatorButton({
    @required this.pressed,
    @required this.displayValue,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final heigth = MediaQuery.of(context).size.height;

    return Container(
      height: heigth * 0.105,
      width: width * 0.2,
      decoration: BoxDecoration(
        color: backgroundColor != null ? backgroundColor : Colors.white,
        borderRadius: const BorderRadius.all(
          const Radius.circular(20),
        ),
      ),
      child: Material(
        child: InkWell(
          borderRadius: const BorderRadius.all(const Radius.circular(20)),
          onTap: () {
            try {
              pressed(displayValue);
            } catch (e) {
              pressed();
            }
          },
          child: Center(
            child: Text(
              displayValue,
              style: TextStyle(
                color: backgroundColor != null ? Colors.white : Colors.black,
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
