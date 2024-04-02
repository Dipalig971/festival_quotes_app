import 'package:festival_quotes_app/components/gridview.dart';
import 'package:festival_quotes_app/utils/festival_list.dart';
import 'package:flutter/material.dart';

import '../components/listview.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right:10),
              child: IconButton(onPressed: () {
                setState(() {
                  islist = !islist;
                });
              },
                  icon: (islist) ? const Icon(
                    Icons.grid_view_rounded, color: Colors.white,size: 30,) : const Icon(
                    Icons.list, color: Colors.white,size: 30,)),
            )
          ],
          title: const Text(
            'Festival App',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
          ),
        ),
        body: (islist) ?List_view():grid_view(),
    );
  }
}
