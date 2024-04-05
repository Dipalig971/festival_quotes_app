import 'package:flutter/material.dart';

import '../../../utils/festival_list.dart';
import 'listview.dart';

Widget List_view() {
  return ListView.builder(itemBuilder: (context, index) =>
      listviewBox(
        festivallist[index]['name'],
        festivallist[index]['img'],
        index,
        context
      ), itemCount: festivallist.length,);
}