import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:mathapp/widgets/calculator/calculator_button.dart';
import 'package:mathapp/widgets/calculator/calculator_display.dart';
import 'package:mathapp/widgets/calculator/calculator_column.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  Color gradientBlue = Color(0xff6a3093);
  Color gradientPurple = Color(0xffa044ff);

  String calculationString = "";
  String errorMessage = "";

  void calculateButtonPressed() {
    removeErrorMessage();
    String calculation = replaceOperators(calculationString);

    Parser p = Parser();
    Expression exp;
    try {
      exp = p.parse(calculation);

      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);

      var result;

      if (checkIfNumberIsInt(eval)) {
        result = eval.toInt();
      } else {
        result = eval;
      }

      setState(() {
        calculationString = result.toString();
      });
    } catch (e) {
      changeErrorMessage('An error has ocurred. Please check your entry.');
    }
  }

  void buttonPressed(String value) {
    setState(() {
      calculationString += value;
    });
  }

  void clearButtonPressed() {
    setState(() {
      calculationString = "";
    });
  }

  void removeLastCharacter() {
    setState(() {
      try {
        calculationString =
            calculationString.substring(0, calculationString.length - 1);
      } catch (e) {}
    });
  }

  bool checkIfNumberIsInt(num value) {
    return value is int || value == value.roundToDouble();
  }

  String replaceOperators(String value) {
    value = value.replaceAll('x', '*');
    value = value.replaceAll('÷', '/');

    return value;
  }

  void removeErrorMessage() {
    setState(() {
      errorMessage = "";
    });
  }

  void changeErrorMessage(String error) {
    setState(() {
      errorMessage = error;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [gradientBlue, gradientPurple])),
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CalculatorDisplay(
                calculationString: calculationString,
              ),
            ),
            if (errorMessage != "")
              Text(
                errorMessage,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(10.0),
                child: CalculatorColumn(
                  clearButtonPressed: clearButtonPressed,
                  buttonPressed: buttonPressed,
                  calculateButtonPressed: calculateButtonPressed,
                  removeLastCharacter: removeLastCharacter,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
