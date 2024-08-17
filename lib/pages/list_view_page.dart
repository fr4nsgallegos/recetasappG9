import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  Color bgColor;
  ListViewPage({required this.bgColor});

  List<String> names = ["Pedro", "Ana", "Juana", "Robert", "LUCIA"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Column(
          children: [
            Text(
              "Hola esta es mi lista de containers",
            ),
            Expanded(
              child: ListView.builder(
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  print(index);
                  return Container(
                    // width: 200,
                    height: 200,
                    margin: EdgeInsets.all(8),
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(
                      names[index],
                    ),
                  );
                },
              ),
            ),
            Container(
              // width: 200,
              height: 100,
              margin: EdgeInsets.all(8),
              color: Colors.black,
              alignment: Alignment.center,
              child: Text(
                "FIN",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),

        // ListView(
        //   children: [
        //     Text("Hola esta es mi lista de containers"),
        //     ...List.generate(
        //       10,
        //       (index) => Container(
        //         // width: 200,
        //         height: 200,
        //         margin: EdgeInsets.all(8),
        //         color: Colors.red,
        //       ),
        //     ),
        //     Container(
        //       // width: 200,
        //       height: 200,
        //       margin: EdgeInsets.all(8),
        //       color: Colors.black,
        //       alignment: Alignment.center,
        //       child: Text(
        //         "FIN",
        //         style: TextStyle(color: Colors.white),
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
