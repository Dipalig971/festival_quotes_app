import 'package:festival_quotes_app/screen/editscreen/editscreen.dart';
import 'package:festival_quotes_app/screen/edittemplate/editscreen.dart';
import 'package:festival_quotes_app/screen/homescreen/homescreen.dart';
import 'package:festival_quotes_app/screen/spalshscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Festival_quotes_app());
}

class Festival_quotes_app extends StatelessWidget {
  const Festival_quotes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 33,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
            titleMedium: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            titleSmall: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            )
        )
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const Splashscreen(),
        '/home':(context) => const Homescreen(),
        '/edit':(context) => const Editscreen(),
        '/template':(context) => EdittemplateScreen(),
      },
    );
  }
}
