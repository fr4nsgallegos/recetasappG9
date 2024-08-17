import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recetasappg9/models/food_model.dart';
import 'package:recetasappg9/pages/form_page.dart';
import 'package:recetasappg9/pages/scroll_page.dart';
import 'package:recetasappg9/widgets/food_card_widget.dart';
import 'package:recetasappg9/widgets/form_widget.dart';

class HomePage extends StatefulWidget {
  Color bgColor;
  HomePage({required this.bgColor});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController urlImageController = TextEditingController();

  // List<Map<String, dynamic>> foodList = [];
  List<FoodModel> foodModelList = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: widget.bgColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => FormPage(),
              ),
            );
          },
        ),
        // appBar: AppBar(
        //   title: Text(
        //     "Mis Recetas",
        //     style: TextStyle(color: Colors.white, fontSize: 25),
        //   ),
        //   centerTitle: true,
        //   backgroundColor: Color(0xff29304B),
        // ),
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
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffEDA971)),
                  onPressed: () {
                    // foodList.add(
                    //   {
                    //     "title": titleController.text,
                    //     "description": descriptionController.text,
                    //     "urlImage": urlImageController.text,
                    //   },
                    // );
                    FoodModel _foodModelAux = FoodModel(
                      title: titleController.text,
                      description: descriptionController.text,
                      urlImage: urlImageController.text,
                    );
                    foodModelList.add(_foodModelAux);
                    setState(() {});
                    titleController.clear();
                    descriptionController.clear();
                    urlImageController.clear();
                    // print(foodList.length);
                  },
                  child: Text("Agregar"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Listado general",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Image.network(
                  "https://images.pexels.com/photos/3049339/pexels-photo-3049339.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
              // ...foodList
              //     .map(
              //       (item) => FoodCardWidget(
              //           titulo: item["title"],
              //           descripcion: item["description"],
              //           urlImage: item["urlImage"]),
              //     )
              //     .toList(),
              // ...foodModelList
              //     .map(
              //       (item) => FoodCardWidget(
              //           titulo: item.title,
              //           descripcion: item.description,
              //           urlImage: item.urlImage),
              //     )
              //     .toList(),

              Expanded(
                child: ListView.builder(
                  itemCount: foodModelList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FoodCardWidget(
                        titulo: foodModelList[index].title,
                        descripcion: foodModelList[index].description,
                        urlImage: foodModelList[index].urlImage);
                  },
                ),
              ),
              //USANDO GIFFFFFFF
              // Image.asset("assets/gifts/ave.gif"),
              // Image.network(
              //     "https://media1.tenor.com/m/X_g_8OeObRIAAAAC/download.gif"),
              // FoodCardWidget(
              //     titulo: "Wafles",
              //     descripcion:
              //         "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente i",
              //     urlImage:
              //         "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1")
            ],
          ),
        ),
      ),
    );
  }
}
