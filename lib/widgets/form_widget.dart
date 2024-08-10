import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormWidget extends StatelessWidget {
  String hint;
  String svg;
  TextEditingController controller;

  FormWidget({
    required this.hint,
    required this.svg,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: TextFormField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        cursorColor: Colors.orange.withOpacity(0.5),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white),
          filled: true,
          fillColor: Colors.white.withOpacity(0.1),
          prefixIcon: SvgPicture.asset(
            "assets/icons/$svg.svg",
            fit: BoxFit.scaleDown,
            // color: Colors.red,
            colorFilter: ColorFilter.mode(
              Colors.white54,
              BlendMode.srcIn,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

// Widget formWidget(TextEditingController controller) {
//   return TextFormField(
//     controller: controller,
//     style: TextStyle(color: Colors.white),
//     cursorColor: Colors.orange.withOpacity(0.5),
//     decoration: InputDecoration(
//       contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       hintText: "Ingrsa el título de la receta",
//       hintStyle: TextStyle(color: Colors.white),
//       filled: true,
//       fillColor: Colors.white.withOpacity(0.1),
//       prefixIcon: SvgPicture.asset(
//         "assets/icons/title.svg",
//         fit: BoxFit.scaleDown,
//         // color: Colors.red,
//         colorFilter: ColorFilter.mode(
//           Colors.white54,
//           BlendMode.srcIn,
//         ),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(15),
//         borderSide: BorderSide.none,
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(15),
//         borderSide: BorderSide.none,
//       ),
//     ),
//   );
// }
