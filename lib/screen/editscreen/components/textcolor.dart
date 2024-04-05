import 'package:flutter/material.dart';

Widget Textcolor(Color color) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    ),
  );
}