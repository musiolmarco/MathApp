import 'package:flutter/material.dart';
import 'package:mathapp/widgets/calculator/calculator_display.dart';

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
              flex: 2,
              child: CalculatorDisplay(

              ),
            ),

            Expanded(
              flex: 4,
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      )
    );
  }
}
