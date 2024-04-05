import 'package:festival_quotes_app/utils/variablename.dart';
import 'package:flutter/material.dart';
import '../../../utils/festival_list.dart';
import 'package:google_fonts/google_fonts.dart';
Widget listviewBox(String name, String img, int index, BuildContext context) {
  return InkWell(
    onTap: () {
      festivalindex = index;
      Navigator.of(context).pushNamed('/edit');
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Container(
        height: 190,
        width: 430,
        decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(20),
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
            child: Center(
              child: Text(
                name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
