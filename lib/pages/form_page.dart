import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  bool isValidTitle(String title) {
    // Si encuentra una coincidencia devuelve TRUE
    // CASO CONTRATIO FALSE
    return RegExp(r'^.{1,10}$').hasMatch(
        title); //Esta expresion regular analiza si la cadena tiene de 1 a 10 caracteres
    //OJO la expresion regular es ^.{1,10}$
  }

  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  hintText: "Sugerencia de nombre del titulo",
                  hintStyle: TextStyle(color: Colors.red),
                  filled: true,
                  fillColor: Colors.cyan,
                  prefix: Icon(Icons.title),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (textoField) {
                  print(textoField);
                },
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  // print(_controller.text);
                  print(isValidTitle("Eclipse"));
                },
                child: Text("Agregar"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.orange,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
