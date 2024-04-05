import 'package:flutter/material.dart';

Widget colorcontanier(Color color) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(shape: BoxShape.circle, color: color),
    ),
  );
}

