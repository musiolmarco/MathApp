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

  void calculateButtonPressed(){
    Parser p = Parser();
    Expression exp = p.parse(calculationString);

    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      calculationString = eval.toString();
    });
  }

  void buttonPressed(String value){
    setState(() {
      calculationString += value;
    });
  }

  void clearButtonPressed(){
    setState(() {
      calculationString = "";
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
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: CalculatorColumn(
                      clearButtonPressed: clearButtonPressed,
                      buttonPressed: buttonPressed,
                      calculateButtonPressed: calculateButtonPressed,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
