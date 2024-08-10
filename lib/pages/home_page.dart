import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recetasappg9/widgets/form_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    TextEditingController urlImageController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff29304B),
        appBar: AppBar(
          title: Text(
            "Mis Recetas",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff29304B),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              FormWidget(
                hint: "Ingrese el Título",
                controller: titleController,
                svg: "title",
              ),
              FormWidget(
                hint: "Ingrese la descripción",
                controller: descriptionController,
                svg: "description",
              ),
              FormWidget(
                hint: "Ingrese url de la imagen",
                controller: urlImageController,
                svg: "urlImage",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
