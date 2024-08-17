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

  Future<List<Map<String, dynamic>>> getItems() {
    return Future.delayed(Duration(seconds: 6), () {
      return [
        {"id": 1, "name": "zapatos"},
        {"id": 2, "name": "medias"},
        {"id": 3, "name": "boxers"},
        {"id": 4, "name": "camisas"},
      ];
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
            FutureBuilder(
              future: getTitle(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                print("SNAPSHOT : ${snapshot}");
                print("CONENCTION STATE: ${snapshot.connectionState}");
                print("CONENCTION HAS DATA: ${snapshot.hasData}");
                print("ERROR: ${snapshot.hasError}");
                print("DATA: ${snapshot.data}");

                print(snapshot.data);
                if (snapshot.hasData) {
                  return Container(
                    width: 200,
                    height: 200,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(snapshot.data),
                  );
                } else {
                  return SizedBox(
                    height: 120,
                    width: 120,
                    child: CircularProgressIndicator(
                      color: Colors.red,
                      backgroundColor: Colors.amber,
                      strokeWidth: 10,
                    ),
                  );
                }
              },
            ),
            FutureBuilder(
              future: getItems(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  List<Map<String, dynamic>> auxList = snapshot.data;
                  return Expanded(
                    child: ListView.builder(
                      itemCount: auxList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Text(auxList[index]["name"]);
                      },
                    ),
                  );
                } else {
                  return Container(
                      height: 500,
                      alignment: Alignment.center,
                      child: CircularProgressIndicator());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
