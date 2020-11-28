import 'package:flutter/material.dart';
import 'package:mathapp/widgets/calculator/calculator_button.dart';
import 'package:mathapp/widgets/calculator/calculator_buttons_row.dart';

class CalculatorGridview extends StatelessWidget {

  final List _buttons = [

    'C', '(', ')', '÷',
    '7', '8', '9', '+',
    '4', '5', '6', '-',
    '1', '2', '3', 'x',
    '0', ',', '+/-', '=',

  ];

  final List _redButtons = [
    "÷", "+" ,"-", "=", "(", ")", "x",
  ];



  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
          CalculatorButtonsRow(),
      ],
    );
  }
}
