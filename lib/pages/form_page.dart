import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _controller = TextEditingController();

  String? _titleErrorText;

  void _validateTitle(String? value) {
    if (value == null || value.isEmpty || value == "") {
      _titleErrorText = "El título no debe estar vacio";
      setState(() {});
    } else if (isValidTitle(value) == false) {
      _titleErrorText = "Se excedió el tamaño del título";
      setState(() {});
    } else {
      _titleErrorText = null;
      setState(() {});
    }
  }

  void _submitForm() {
    _validateTitle(_controller.text);
    print(_formKey.currentState?.validate() ?? "esnull");
  }

  bool isValidTitle(String title) {
    // Si encuentra una coincidencia devuelve TRUE
    // CASO CONTRATIO FALSE
    return RegExp(r'^.{1,10}$').hasMatch(
        title); //Esta expresion regular analiza si la cadena tiene de 1 a 10 caracteres
    //OJO la expresion regular es ^.{1,10}$
  }

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
                validator: (value) => _titleErrorText,
                onChanged: (textoField) {
                  return _validateTitle(textoField);
                },
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
                  // print(isValidTitle("Eclipse"));
                  _submitForm();
                },
                child: Text("Agregar"),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.orange,
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("ATRAS"))
          ],
        ),
      ),
    );
  }
}
