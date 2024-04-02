import 'package:flutter/material.dart';
import '../utils/festival_list.dart';


Widget listviewBox(String name , String img) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: Container(
      height: 190,
      width: 430,
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
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget List_view() {
  return InkWell(
    onTap: () {
     // Navigator.of(context).pushNamed('/');
    },
    child: ListView.builder(itemBuilder: (context, index) =>
        listviewBox(
          festivallist[index]['name'],
          festivallist[index]['img'],
        ), itemCount: festivallist.length,),
  );
}