import 'package:flutter/material.dart';

import 'calculator_button.dart';

class CalculatorButtonsRow extends StatelessWidget {
  final List<CalculatorButton> buttonList;

  CalculatorButtonsRow({@required this.buttonList});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buttonList[0],
        buttonList[1],
        buttonList[2],
        buttonList[3],
      ],
    );
  }
}
