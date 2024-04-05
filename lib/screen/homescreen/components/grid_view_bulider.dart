import 'package:flutter/material.dart';

import '../../../utils/festival_list.dart';
import 'gridview.dart';

Widget grid_view() {
  return GridView.builder(
    gridDelegate:
    const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    itemBuilder: (context, index) =>
        GridviewBox(
          festivallist[index]['name'],
          festivallist[index]['img'],
          index,
          context
        ),
    itemCount: festivallist.length,
  );
}