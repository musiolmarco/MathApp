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

  final List _redButtons = [
    "÷", "+" ,"-", "=", "(", ")", "x",
  ];

  final Color purpleColor = new Color(0xff4c207a);
  final Color grayButtonColor = new Color(0xffdedede);

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

          Color color;
          Color textColor;

          if(_redButtons.contains(_buttons[index])){
            color = purpleColor;
            textColor = Colors.white;
          }else if(_buttons[index] == "C"){
            color = Colors.redAccent;
            textColor = Colors.white;
        }else{
            color = grayButtonColor;
            textColor = Colors.black;
          }

          return CalculatorButton(
              pressed: () {},
              displayValue: _buttons[index],
              color: color,
          textColor: textColor,);
        });
  }
}
