import 'package:flutter/material.dart';

class CalculatorDisplay extends StatefulWidget {

  final String calculationString;

  CalculatorDisplay({@required this.calculationString});

  @override
  _CalculatorDisplayState createState() => _CalculatorDisplayState();
}

class _CalculatorDisplayState extends State<CalculatorDisplay> {



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                widget.calculationString,
                style: TextStyle(
                  fontSize: 60,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
      ),
    );
  }
}
