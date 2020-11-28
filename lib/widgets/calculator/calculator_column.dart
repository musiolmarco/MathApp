import 'package:flutter/material.dart';
import 'package:mathapp/widgets/calculator/calculator_button.dart';
import 'package:mathapp/widgets/calculator/calculator_buttons_row.dart';

class CalculatorColumn extends StatelessWidget {

  static Color purpleButtonColor = new Color(0xff4c207a);
  static Color grayButtonColor = new Color(0xffdedede);

  final List _buttons = [

    'C', '(', ')', '÷',
    '7', '8', '9', '+',
    '4', '5', '6', '-',
    '1', '2', '3', 'x',
    '0', ',', '+/-', '=',

  ];


  final List<CalculatorButton> _buttonRow1 = [
    CalculatorButton(pressed: (){}, displayValue: "C", color: Colors.redAccent, textColor: Colors.white),
    CalculatorButton(pressed: (){}, displayValue: "(", color: purpleButtonColor, textColor: Colors.white),
    CalculatorButton(pressed: (){}, displayValue: ")", color: purpleButtonColor, textColor: Colors.white),
    CalculatorButton(pressed: (){}, displayValue: "÷", color: purpleButtonColor, textColor: Colors.white),
  ];

  final List<CalculatorButton> _buttonRow2 = [
    CalculatorButton(pressed: (){}, displayValue: "7", color: Colors.white, textColor: Colors.black),
    CalculatorButton(pressed: (){}, displayValue: "8", color: Colors.white, textColor: Colors.black),
    CalculatorButton(pressed: (){}, displayValue: "9", color: Colors.white, textColor: Colors.black),
    CalculatorButton(pressed: (){}, displayValue: "+", color: purpleButtonColor, textColor: Colors.white),
  ];

  final List<CalculatorButton> _buttonRow3 = [
    CalculatorButton(pressed: (){}, displayValue: "4", color: Colors.white, textColor: Colors.black),
    CalculatorButton(pressed: (){}, displayValue: "5", color: Colors.white, textColor: Colors.black),
    CalculatorButton(pressed: (){}, displayValue: "6", color: Colors.white, textColor: Colors.black),
    CalculatorButton(pressed: (){}, displayValue: "-", color: purpleButtonColor, textColor: Colors.white),
  ];

  final List<CalculatorButton> _buttonRow4 = [
    CalculatorButton(pressed: (){}, displayValue: "1", color: Colors.white, textColor: Colors.black),
    CalculatorButton(pressed: (){}, displayValue: "2", color: Colors.white, textColor: Colors.black),
    CalculatorButton(pressed: (){}, displayValue: "3", color: Colors.white, textColor: Colors.black),
    CalculatorButton(pressed: (){}, displayValue: "x", color: purpleButtonColor, textColor: Colors.white),
  ];

  final List<CalculatorButton> _buttonRow5 = [
    CalculatorButton(pressed: (){}, displayValue: "0", color: Colors.white, textColor: Colors.black),
    CalculatorButton(pressed: (){}, displayValue: ",", color: Colors.white, textColor: Colors.black),
    CalculatorButton(pressed: (){}, displayValue: "+/-", color: Colors.white, textColor: Colors.black),
    CalculatorButton(pressed: (){}, displayValue: "=", color: purpleButtonColor, textColor: Colors.white),
  ];


  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
          CalculatorButtonsRow(
            buttonList: _buttonRow1,
          ),
        CalculatorButtonsRow(
          buttonList: _buttonRow2,
        ),
        CalculatorButtonsRow(
          buttonList: _buttonRow3,
        ),
        CalculatorButtonsRow(
          buttonList: _buttonRow4,
        ),
        CalculatorButtonsRow(
          buttonList: _buttonRow5,
        ),
      ],
    );
  }
}
