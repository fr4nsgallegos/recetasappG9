import 'package:flutter/material.dart';

class FuturePage extends StatefulWidget {
  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String titulo = "";
  List<String> productsList = [];
  Future<String> getTitle() async {
    return Future.delayed(Duration(seconds: 4), () {
      return "Los inocentes";
    });
  }

  Future<List<String>> getProducts() {
    return Future.delayed(Duration(seconds: 5), () {
      return ["Pera", "Manzana", "Mango", "Durazno"];
    });
  }

  void llenarTitulo() async {
    titulo = await getTitle();
    setState(() {});
  }

  void llenarProducts() async {
    productsList = await getProducts();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getTitle().then((element) {
      titulo = element;
      setState(() {});
    });
    llenarProducts();
  }

  @override
  Widget build(BuildContext context) {
    // llenarTitulo();

    return Scaffold(
      appBar: AppBar(
        title: Text("Future Page"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        titulo = "nuevo titulo";
        setState(() {});
      }),
      body: Center(
        child: Column(
          children: [
            Text(titulo),
            ...productsList.map((product) {
              return Container(
                color: Colors.yellow,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(30),
                child: Text(product),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
