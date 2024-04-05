import 'package:festival_quotes_app/utils/variablename.dart';
import 'package:flutter/material.dart';

import '../../../utils/festival_list.dart';


Widget GridviewBox(String name , String img,int index ,BuildContext context) {
  return InkWell(
    onTap: () {
      festivalindex = index;
      Navigator.of(context).pushNamed('/edit');
    },
    child: Padding(
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
    ),
  );
}
