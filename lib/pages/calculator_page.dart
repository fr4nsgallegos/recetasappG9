import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:recetasappg9/widgets/calculator_button.dart';

class CalculatorPage extends StatefulWidget {
  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String answer = "";
  String input = "";
  double num1 = 0.0;
  double num2 = 0.0;
  String operator = "";

  void pressNumberButton(String number) {
    input != '0' ? input += number : input = number;
    // input = input + number;
  }

  void pressACButton() {
    answer = "0";
    input = "0";
  }

  void pressDecimalButton() {
    if (!input.contains(".")) {
      input += ".";
    }
  }

  void pressDeleteButton() {
    answer.length != 0 ? input = input.substring(0, input.length - 1) : "0";
  }

  void pressIgualButton() {
    switch (operator) {
      case "+":
        answer = (num1 + num2).toString();
        break;
      case "-":
        answer = (num1 - num2).toString();
        break;
      case "*":
        answer = (num1 * num2).toString();
        break;
      case "/":
        answer = (num1 / num2).toString();
        break;
      default:
        break;
    }
  }

  void buttonPressed(String textButton) {
    if (textButton == "AC") {
      pressACButton();
    } else if (textButton == "+" ||
        textButton == "-" ||
        textButton == "*" ||
        textButton == "/") {
      num1 = double.parse(input);
      operator = textButton;
      input = "0";
    } else if (textButton == "=") {
      num2 = double.parse(input);
      pressIgualButton();
      input = answer;
    } else if (textButton == '.') {
      pressDecimalButton();
    } else if (textButton == "<-") {
      pressDeleteButton();
    } else {
      pressNumberButton(textButton);
    }
    answer = input;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1C1C1C),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.symmetric(vertical: 16),
                padding: EdgeInsets.all(16),
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: Color(0xff505050),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  answer,
                  style: TextStyle(color: Colors.white, fontSize: 65),
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    numero: "1",
                    backgroundColor: Color(0xff3E3E3E),
                    function: () => buttonPressed("1"),
                  ),
                  CalculatorButton(
                    numero: "2",
                    backgroundColor: Color(0xff3E3E3E),
                    function: () => buttonPressed("2"),
                  ),
                  CalculatorButton(
                    numero: "3",
                    backgroundColor: Color(0xff3E3E3E),
                    function: () => buttonPressed("3"),
                  ),
                  CalculatorButton(
                    numero: "/",
                    backgroundColor: Color(0xffFF9F0A),
                    function: () => buttonPressed("/"),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    numero: "4",
                    backgroundColor: Color(0xff3E3E3E),
                    function: () => buttonPressed("4"),
                  ),
                  CalculatorButton(
                    numero: "5",
                    backgroundColor: Color(0xff3E3E3E),
                    function: () => buttonPressed("5"),
                  ),
                  CalculatorButton(
                    numero: "6",
                    backgroundColor: Color(0xff3E3E3E),
                    function: () => buttonPressed("6"),
                  ),
                  CalculatorButton(
                    numero: "*",
                    backgroundColor: Color(0xffFF9F0A),
                    function: () => buttonPressed("*"),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    numero: "7",
                    backgroundColor: Color(0xff3E3E3E),
                    function: () => buttonPressed("7"),
                  ),
                  CalculatorButton(
                    numero: "8",
                    backgroundColor: Color(0xff3E3E3E),
                    function: () => buttonPressed("8"),
                  ),
                  CalculatorButton(
                    numero: "9",
                    backgroundColor: Color(0xff3E3E3E),
                    function: () => buttonPressed("9"),
                  ),
                  CalculatorButton(
                    numero: "-",
                    backgroundColor: Color(0xffFF9F0A),
                    function: () => buttonPressed("-"),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                    numero: ".",
                    backgroundColor: Color(0xff3E3E3E),
                    function: () => buttonPressed("."),
                  ),
                  CalculatorButton(
                    numero: "0",
                    backgroundColor: Color(0xff3E3E3E),
                    function: () => buttonPressed("0"),
                  ),
                  CalculatorButton(
                    numero: "<-",
                    backgroundColor: Color(0xff3E3E3E),
                    function: () => buttonPressed("<-"),
                  ),
                  CalculatorButton(
                    numero: "+",
                    backgroundColor: Color(0xffFF9F0A),
                    function: () => buttonPressed("+"),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Container()),
                  Expanded(child: Container()),
                  CalculatorButton(
                    numero: "AC",
                    backgroundColor: Color(0xff3E3E3E),
                    function: () => buttonPressed("AC"),
                  ),
                  CalculatorButton(
                    numero: "=",
                    backgroundColor: Color(0xffFF9F0A),
                    function: () => buttonPressed("="),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
