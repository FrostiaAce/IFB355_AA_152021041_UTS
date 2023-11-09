import 'package:flutter/material.dart';
import 'Addition/constants.dart';
import 'package:math_expressions/math_expressions.dart'; // Import math_expressions

class CalculatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator'),
        backgroundColor:
            Colors.deepPurple, // Use the primaryButtonColor from constants
      ),
      body: CalculatorWidget(),
    );
  }
}

class CalculatorWidget extends StatefulWidget {
  @override
  _CalculatorWidgetState createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {
  String input = '';
  String result = '';
  late Color buttonColor;

  @override
  void initState() {
    super.initState();
    buttonColor =
        Colors.deepPurple; // Use the primaryButtonColor from constants
  }

  void buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        input = '';
        result = '';
      } else if (buttonText == '=') {
        try {
          Parser p = Parser();
          Expression exp = p.parse(input);
          ContextModel cm = ContextModel();
          result = exp.evaluate(EvaluationType.REAL, cm).toString();
          input =
              result; // Set the input to the result for further calculations
        } catch (e) {
          result = 'Error';
        }
      } else if (buttonText == 'DEL') {
        if (input.isNotEmpty) {
          // Delete the last character from the input
          input = input.substring(0, input.length - 1);
        }
      } else {
        input += buttonText;
      }
    });
  }

  Widget buildButton(String buttonText, Color textColor, Color bgColor) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: bgColor,
        ),
        child: TextButton(
          onPressed: () {
            buttonPressed(buttonText);
          },
          style: TextButton.styleFrom(
            primary: textColor,
            padding: EdgeInsets.all(20.0),
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.bottomRight,
            child: Text(
              input,
              style: TextStyle(fontSize: 36),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      buildButton(
                          'DEL', Colors.deepPurple, secondaryButtonColor),
                      buildButton('C', Colors.deepPurple, secondaryButtonColor),
                      buildButton('=', Colors.deepPurple, secondaryButtonColor),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      buildButton('7', textColor, Colors.deepPurple),
                      buildButton('8', textColor, Colors.deepPurple),
                      buildButton('9', textColor, Colors.deepPurple),
                      buildButton('/', Colors.deepPurple, secondaryButtonColor),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      buildButton('4', textColor, Colors.deepPurple),
                      buildButton('5', textColor, Colors.deepPurple),
                      buildButton('6', textColor, Colors.deepPurple),
                      buildButton('*', Colors.deepPurple, secondaryButtonColor),
                      // Change * to ×
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      buildButton('1', textColor, Colors.deepPurple),
                      buildButton('2', textColor, Colors.deepPurple),
                      buildButton('3', textColor, Colors.deepPurple),
                      buildButton('-', Colors.deepPurple, secondaryButtonColor),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      buildButton('.', textColor, Colors.deepPurple),
                      buildButton('0', textColor, Colors.deepPurple),
                      buildButton('', textColor, Colors.deepPurple),
                      // Placeholder for the empty button
                      buildButton('+', Colors.deepPurple, secondaryButtonColor),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
