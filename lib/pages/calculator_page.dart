import 'package:flutter/material.dart';
import 'package:mathapp/widgets/calculator/calculator_button.dart';
import 'package:mathapp/widgets/calculator/calculator_display.dart';
import 'package:mathapp/widgets/calculator/calculator_gridview.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

  Color gradientBlue = Color(0xff97D9E1);
  Color gradientPurple = Color(0xffD9AFD9);

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
                  child: CalculatorDisplay(),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: CalculatorGridview(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
