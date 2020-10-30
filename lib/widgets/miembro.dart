import 'package:flutter/material.dart';

Widget miembro(String nombre, img) {
  return Stack(
    children: [
      Container(
        child: Positioned.fill(
          child: Image(
            fit: BoxFit.cover,
            image: AssetImage('assets/$img'),
          ),
        ),
      ),
      Positioned(
        top: 130,
        child: Container(
          height: 80,
          width: 200,
          color: Color.fromRGBO(0, 0, 0, 0.3),
        ),
      ),
      Positioned(
        top: 140,
        left: 20,
        child: SizedBox(
          width: 200,
          height: 200,
          child: Text(
            '$nombre',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.4,
            ),
          ),
        ),
      ),
    ],
  );
}
