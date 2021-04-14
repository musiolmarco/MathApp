import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:mathapp/widgets/calculator/calculator_display.dart';
import 'package:mathapp/widgets/calculator/calculator_column.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final Color gradientBlue = Color(0xff6a3093);
  final Color gradientPurple = Color(0xffa044ff);

  final ScrollController scrollController = new ScrollController();

  String calculationString = "";
  String errorMessage = "";

  // calculate the result and displaying it
  void calculateButtonPressed() {
    removeErrorMessage();
    final String calculation = replaceOperators(calculationString);

    final Parser p = Parser();
    Expression exp;
    try {
      exp = p.parse(calculation);

      final ContextModel cm = ContextModel();
      final double eval = exp.evaluate(EvaluationType.REAL, cm);

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

    scrollToFirstNumber();
  }

  // adding the pressed button string to the calculation String
  void buttonPressed(String value) {
    removeErrorMessage();
    setState(() {
      calculationString += value;
    });

    scrollToLastNumber();
  }

  // clear the input
  void clearButtonPressed() {
    removeErrorMessage();
    setState(() {
      calculationString = "";
    });
  }

  // remove the last character of the input
  void removeLastCharacter() {
    removeErrorMessage();
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

  // replace all the operators to solve the math problem with the math_expressions package
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

  // displaying the given error message on the ui
  void changeErrorMessage(String error) {
    setState(() {
      errorMessage = error;
    });
  }

  void scrollToLastNumber() {
    final double factor = MediaQuery.of(context).size.width * 0.1;

    scrollController.animateTo(
      scrollController.position.maxScrollExtent + factor,
      duration: Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }

  void scrollToFirstNumber() {
    scrollController.animateTo(
      scrollController.position.minScrollExtent,
      duration: Duration(milliseconds: 200),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [gradientBlue, gradientPurple],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: CalculatorDisplay(
                  calculationString: calculationString,
                  scrollController: scrollController,
                ),
              ),
              if (errorMessage != "")
                Text(
                  errorMessage,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(10.0),
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
      ),
    );
  }
}
