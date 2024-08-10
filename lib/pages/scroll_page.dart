import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  Widget createContainer() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.cyan,
      margin: EdgeInsets.all(8),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text("CABECERA 1"),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 20,
                  itemBuilder: (context, index) => createContainer(),
                ),
              ),
              ...List.generate(
                5,
                (index) => Text("HIJO"),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 100,
                  itemBuilder: (context, index) => createContainer(),
                ),
              ),
              createContainer(),
              createContainer(),
              createContainer(),
              createContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
