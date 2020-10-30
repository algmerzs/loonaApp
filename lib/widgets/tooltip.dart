import 'package:flutter/material.dart';

Widget tooltip(String mensaje, imagen) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12.0),
    child: Positioned.fill(
      child: Tooltip(
        decoration: BoxDecoration(
          color: Colors.deepPurple[300],
          borderRadius: BorderRadius.circular(20),
        ),
        message: "$mensaje",
        child: Image(fit: BoxFit.fitWidth, image: NetworkImage('$imagen')),
      ),
    ),
  );
}
