import 'package:flutter/material.dart';
import 'package:mathapp/widgets/calculator/calculator_button.dart';
import 'package:mathapp/widgets/calculator/calculator_display.dart';
import 'package:mathapp/widgets/calculator/calculator_gridview.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: CalculatorDisplay(),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: CalculatorGridview(),
                ),
              ),
            ],
          ),
        ));
  }
}
