import 'package:flutter/material.dart';

class FoodCardWidget extends StatelessWidget {
  String? titulo;
  String? descripcion;
  String? urlImage;

  FoodCardWidget({
    required this.titulo,
    required this.descripcion,
    required this.urlImage,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      color: Colors.black.withOpacity(0.4),
      child: Column(
        children: [
          Image.network(urlImage ?? "-"),
          Text(
            titulo ?? "-",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(
            descripcion ?? "-",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
