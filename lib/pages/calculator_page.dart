import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:recetasappg9/widgets/calculator_button.dart';

class CalculatorPage extends StatelessWidget {
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
                  "456",
                  style: TextStyle(color: Colors.white, fontSize: 65),
                ),
              ),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                      numero: "1", backgroundColor: Color(0xff3E3E3E)),
                  CalculatorButton(
                      numero: "2", backgroundColor: Color(0xff3E3E3E)),
                  CalculatorButton(
                      numero: "3", backgroundColor: Color(0xff3E3E3E)),
                  CalculatorButton(
                      numero: "/", backgroundColor: Color(0xffFF9F0A)),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                      numero: "4", backgroundColor: Color(0xff3E3E3E)),
                  CalculatorButton(
                      numero: "5", backgroundColor: Color(0xff3E3E3E)),
                  CalculatorButton(
                      numero: "6", backgroundColor: Color(0xff3E3E3E)),
                  CalculatorButton(
                      numero: "*", backgroundColor: Color(0xffFF9F0A)),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton(
                      numero: "7", backgroundColor: Color(0xff3E3E3E)),
                  CalculatorButton(
                      numero: "8", backgroundColor: Color(0xff3E3E3E)),
                  CalculatorButton(
                      numero: "9", backgroundColor: Color(0xff3E3E3E)),
                  CalculatorButton(
                      numero: "-", backgroundColor: Color(0xffFF9F0A)),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(child: Container()),
                  Expanded(child: Container()),
                  CalculatorButton(
                      numero: "9", backgroundColor: Color(0xff3E3E3E)),
                  CalculatorButton(
                      numero: "-", backgroundColor: Color(0xffFF9F0A)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
