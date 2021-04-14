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
  final Function calculateButtonPressed;
  final Function removeLastCharacter;

  CalculatorColumn(
      {@required this.buttonPressed,
      @required this.clearButtonPressed,
      @required this.calculateButtonPressed,
      @required this.removeLastCharacter}) {
    buttonRow1 = [
      CalculatorButton(
        pressed: clearButtonPressed,
        displayValue: "C",
        backgroundColor: Colors.redAccent,
      ),
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: "(",
        backgroundColor: purpleButtonColor,
      ),
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: ")",
        backgroundColor: purpleButtonColor,
      ),
      CalculatorButton(
        pressed: removeLastCharacter,
        displayValue: "«",
        backgroundColor: Colors.redAccent,
      ),
    ];

    buttonRow2 = [
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: "7",
      ),
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: "8",
      ),
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: "9",
      ),
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: "+",
        backgroundColor: purpleButtonColor,
      ),
    ];

    buttonRow3 = [
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: "4",
      ),
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: "5",
      ),
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: "6",
      ),
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: "-",
        backgroundColor: purpleButtonColor,
      ),
    ];

    buttonRow4 = [
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: "1",
      ),
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: "2",
      ),
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: "3",
      ),
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: "x",
        backgroundColor: purpleButtonColor,
      ),
    ];

    buttonRow5 = [
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: "0",
      ),
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: ".",
      ),
      CalculatorButton(
        pressed: buttonPressed,
        displayValue: "÷",
        backgroundColor: purpleButtonColor,
      ),
      CalculatorButton(
        pressed: calculateButtonPressed,
        displayValue: "=",
        backgroundColor: Colors.green,
      ),
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
