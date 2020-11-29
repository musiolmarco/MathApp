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

  CalculatorColumn(){
    buttonRow1 = [
      CalculatorButton(pressed: (){}, displayValue: "C", color: Colors.redAccent, textColor: Colors.white),
      CalculatorButton(pressed: (){}, displayValue: "(", color: purpleButtonColor, textColor: Colors.white),
      CalculatorButton(pressed: (){}, displayValue: ")", color: purpleButtonColor, textColor: Colors.white),
      CalculatorButton(pressed: (){}, displayValue: "÷", color: purpleButtonColor, textColor: Colors.white),
    ];

    buttonRow2 = [
      CalculatorButton(pressed: (){}, displayValue: "7", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: (){}, displayValue: "8", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: (){}, displayValue: "9", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: (){}, displayValue: "+", color: purpleButtonColor, textColor: Colors.white),
    ];

    buttonRow3 = [
      CalculatorButton(pressed: (){}, displayValue: "4", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: (){}, displayValue: "5", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: (){}, displayValue: "6", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: (){}, displayValue: "-", color: purpleButtonColor, textColor: Colors.white),
    ];

    buttonRow4 = [
      CalculatorButton(pressed: (){}, displayValue: "1", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: (){}, displayValue: "2", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: (){}, displayValue: "3", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: (){}, displayValue: "x", color: purpleButtonColor, textColor: Colors.white),
    ];

    buttonRow5 = [
      CalculatorButton(pressed: (){}, displayValue: "0", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: (){}, displayValue: ",", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: (){}, displayValue: "+/-", color: Colors.white, textColor: Colors.black),
      CalculatorButton(pressed: (){}, displayValue: "=", color: purpleButtonColor, textColor: Colors.white),
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
