import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  String numero;
  Color backgroundColor;

  CalculatorButton({
    required this.numero,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          shape: CircleBorder(),
          backgroundColor: backgroundColor,
        ),
        child: Container(
          padding: EdgeInsets.all(8),
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height / 11,
          width: MediaQuery.of(context).size.width / 7,
          child: Text(
            numero,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
