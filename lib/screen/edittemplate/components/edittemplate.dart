import 'package:festival_quotes_app/utils/festival_list.dart';
import 'package:festival_quotes_app/utils/variablename.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget edittemplate(BuildContext context) {
  return Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    // crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 150,left: 10),
        child: Container(
          height: 360,
          width: 380,
          decoration:  BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(festivallist[festivalindex]['img']),fit: BoxFit.cover),
          ),

        ),
      ),
      InkWell(
        onTap: () {
         Navigator.of(context).pushNamed('/template');
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 50,left: 20),
          child: Container(
            height: 70,
            width: 420,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20)
            ),
            child: Center(child: Text('Edit Template',style: Theme.of(context).textTheme.titleMedium,)),
          ),
        ),
      )
    ],
  );
}