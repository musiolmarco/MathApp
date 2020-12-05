import 'package:flutter/material.dart';

class CalculatorDisplay extends StatefulWidget {

  final String calculationString;
  final ScrollController scrollController;

  CalculatorDisplay({@required this.calculationString, @required this.scrollController});

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
              padding: const EdgeInsets.fromLTRB(0,0,15,10),
              child: SingleChildScrollView(
                controller: widget.scrollController,
                scrollDirection: Axis.horizontal,
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
      ),
    );
  }
}
