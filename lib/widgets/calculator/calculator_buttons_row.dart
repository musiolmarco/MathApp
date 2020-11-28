import 'package:flutter/material.dart';

import 'calculator_button.dart';

class CalculatorButtonsRow extends StatelessWidget {

  final Color _purpleColor = new Color(0xff4c207a);
  final Color _grayButtonColor = new Color(0xffdedede);

  final CalculatorButton button1;
  final CalculatorButton button2;
  final CalculatorButton button3;
  final CalculatorButton button4;

  CalculatorButtonsRow({@required this.button1, @required this.button2, @required this.button3, @required this.button4});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          button1, button2, button3, button4,
    ]);
  }
}
