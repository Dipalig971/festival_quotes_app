import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 20), () {
      Navigator.of(context).pushReplacementNamed('/home');
    });
    return  Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(right: 5,left: 5),
            height: MediaQuery.of(context).size.height,
              width:MediaQuery.of(context).size.width ,
              child: const Image(image: AssetImage('assets/image/splash.jpeg'),fit: BoxFit.cover,)),
        ],
      ),
    );
  }
}
