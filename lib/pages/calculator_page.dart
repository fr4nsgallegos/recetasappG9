import 'dart:ffi';

import 'package:flutter/material.dart';

class CalculatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1C1C1C),
        body: Column(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.all(16),
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
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text("1"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
