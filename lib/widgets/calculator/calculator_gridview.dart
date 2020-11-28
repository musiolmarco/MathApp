import 'package:flutter/material.dart';

class CalculatorGridview extends StatelessWidget {

  final List _buttons = [

    'C', '(', ')', '%',
    '7', '8', '9', '+',
    '4', '5', '6', '-',
    '1', '2', '3', 'x',
    '0', ',', '+/-', '=',

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
  }
}
