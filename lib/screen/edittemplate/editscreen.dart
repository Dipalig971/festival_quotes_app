import 'package:flutter/material.dart';

import 'components/edittemplate.dart';

class Editscreen extends StatefulWidget {
  const Editscreen({super.key});

  @override
  State<Editscreen> createState() => _EditscreenState();
}

class _EditscreenState extends State<Editscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        // leading: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
        title: const Text(
          'Festival App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
      ),
      body: edittemplate(context),
    );
  }
}
