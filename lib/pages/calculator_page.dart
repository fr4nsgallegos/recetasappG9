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

  void pressNumberButton(String number) {
    input = input + number;
  }

  void buttonPressed(String textButton) {
    if (textButton == "AC") {
    } else if (textButton == "+" ||
        textButton == "-" ||
        textButton == "*" ||
        textButton == "/") {
    } else if (textButton == "=") {
    } else if (textButton == '.') {
    } else if (textButton == "<-") {
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
