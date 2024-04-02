import 'package:flutter/material.dart';

import '../utils/festival_list.dart';


Widget GridviewBox(String name , String img) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Container(
      height: 190,
      width: 330,
      decoration:  BoxDecoration(
        // color: Colors.pink,
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
      child: Positioned.fill(
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
          ),
          child:  Center(
            child: Text(
              name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget grid_view() {
  return GridView.builder(
    gridDelegate:
    const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemBuilder: (context, index) =>
        GridviewBox(
          festivallist[index]['name'],
          festivallist[index]['img'],
        ),
    itemCount: festivallist.length,
  );
}