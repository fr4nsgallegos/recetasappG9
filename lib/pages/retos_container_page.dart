import 'package:flutter/material.dart';

class RetosContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RETOS CONTAINER"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              IAmHeader(),
              Helipuerto(),
              challengeCotainer(),
              challengeGradient(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Helipuerto() {
  return Container(
    width: 150,
    height: 150,
    decoration: BoxDecoration(
      color: Colors.white,
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.orange,
        width: 8.0,
      ),
    ),
    child: const Center(
      child: Text(
        'H',
        style: TextStyle(
          fontSize: 80,
          color: Colors.orange,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget challengeCotainer() {
  return Container(
    width: 250,
    height: 60,
    decoration: BoxDecoration(
      color: Colors.lightBlueAccent,
      borderRadius: BorderRadius.circular(50),
    ),
    child: Row(
      children: [
        const Expanded(
          child: Center(
            child: Text(
              'Challenge',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Container(
          width: 50,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.5),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget IAmHeader() {
  return Container(
    width: double.infinity,
    alignment: Alignment.center,
    padding: EdgeInsets.all(25),
    decoration: BoxDecoration(
      color: const Color(0xff57B4FF),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(25), // Borde inferior izquierdo redondeado
        bottomRight: Radius.circular(25), // Borde inferior derecho redondeado
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.blue,
          offset: Offset(5, 5),
          blurRadius: 8,
        ),
      ],
    ),
    child: Text(
      "I am a header",
      style: TextStyle(
        color: Colors.white,
        fontSize: 40,
      ),
    ),
  );
}

Widget challengeGradient(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width - 50,
    height: 200,
    decoration: BoxDecoration(
      // color: Colors.red,
      borderRadius: BorderRadius.circular(25),
      gradient: LinearGradient(
        colors: [
          Color(0xffFE4327),
          Color(0xffFF9001),
        ],
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        stops: [
          0.1,
          0.8,
        ],
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          offset: Offset(-10, 10),
          blurRadius: 10,
        ),
      ],
    ),
    alignment: Alignment.centerLeft,
    padding: EdgeInsets.only(left: 25),
    child: Text(
      "Challenge",
      style: TextStyle(
        color: Colors.white,
        fontStyle: FontStyle.italic,
        fontSize: 45,
        fontWeight: FontWeight.w200,
      ),
    ),
  );
}
