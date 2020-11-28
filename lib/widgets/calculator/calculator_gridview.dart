import 'package:flutter/material.dart';
import 'package:mathapp/widgets/calculator/calculator_button.dart';

class CalculatorGridview extends StatelessWidget {

  final List _buttons = [

    'C', '(', ')', '÷',
    '7', '8', '9', '+',
    '4', '5', '6', '-',
    '1', '2', '3', 'x',
    '0', ',', '+/-', '=',

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: _buttons.length,
        physics: new NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1.2),
        itemBuilder: (context, index) {
          return CalculatorButton(
              pressed: () {},
              displayValue: _buttons[index],
          color: Color.fromRGBO(0, 0, 0, 0.3),);
        });
  }
}
