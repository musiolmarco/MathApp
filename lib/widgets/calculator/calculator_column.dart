import 'package:flutter/material.dart';
import 'package:mathapp/widgets/calculator/calculator_button.dart';
import 'package:mathapp/widgets/calculator/calculator_buttons_row.dart';

class CalculatorColumn extends StatelessWidget {

  static Color purpleButtonColor = new Color(0xff4c207a);
  static Color grayButtonColor = new Color(0xffdedede);

  List<CalculatorButton> buttonRow1;
  List<CalculatorButton> buttonRow2;
  List<CalculatorButton> buttonRow3;
  List<CalculatorButton> buttonRow4;
  List<CalculatorButton> buttonRow5;

  final Function buttonPressed;
  final Function clearButtonPressed;

  CalculatorColumn({@required this.buttonPressed, @required this.clearButtonPressed}){
    buttonRow1 = [
      CalculatorButton(pressed: clearButtonPressed, displayValue: "C", color: Colors.redAccent, textColor: Colors.white),
      CalculatorButton(pressed: buttonPressed, displayValue: "(", color: purpleButtonColor, textColor: Colors.white),
      CalculatorButton(pressed: buttonPressed, displayValue: ")", color: purpleButtonColor, textColor: Colors.white),
      CalculatorButton(pressed: buttonPressed, displayValue: "÷", color: purpleButtonColor, textColor: Colors.white),
    ];

    buttonRow2 = [
      CalculatorButton(pressed: buttonPressed, displayValue: "7", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: buttonPressed, displayValue: "8", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: buttonPressed, displayValue: "9", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: buttonPressed, displayValue: "+", color: purpleButtonColor, textColor: Colors.white),
    ];

    buttonRow3 = [
      CalculatorButton(pressed: buttonPressed, displayValue: "4", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: buttonPressed, displayValue: "5", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: buttonPressed, displayValue: "6", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: buttonPressed, displayValue: "-", color: purpleButtonColor, textColor: Colors.white),
    ];

    buttonRow4 = [
      CalculatorButton(pressed: buttonPressed, displayValue: "1", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: buttonPressed, displayValue: "2", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: buttonPressed, displayValue: "3", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: buttonPressed, displayValue: "x", color: purpleButtonColor, textColor: Colors.white),
    ];

    buttonRow5 = [
      CalculatorButton(pressed: buttonPressed, displayValue: "0", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: buttonPressed, displayValue: ",", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: (){}, displayValue: "+/-", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: (){}, displayValue: "=", color: Colors.green, textColor: Colors.white),
    ];
  }


  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
          CalculatorButtonsRow(
            buttonList: buttonRow1,
          ),
        CalculatorButtonsRow(
          buttonList: buttonRow2,
        ),
        CalculatorButtonsRow(
          buttonList: buttonRow3,
        ),
        CalculatorButtonsRow(
          buttonList: buttonRow4,
        ),
        CalculatorButtonsRow(
          buttonList: buttonRow5,
        ),
      ],
    );
  }
}
