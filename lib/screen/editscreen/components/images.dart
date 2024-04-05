import 'package:flutter/material.dart';

Widget imagecontanier(String img) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 80,
      width: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
