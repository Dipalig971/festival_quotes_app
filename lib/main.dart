import 'package:festival_quotes_app/screen/homescreen.dart';
import 'package:festival_quotes_app/screen/spalshscreen.dart';
import 'package:flutter/material.dart';

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
            fontSize: 30,
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
      },
    );
  }
}
