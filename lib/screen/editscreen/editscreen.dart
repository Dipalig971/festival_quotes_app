import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import '../../utils/decoration.dart';
import '../../utils/variablename.dart';
import '../../../utils/festival_list.dart';
import 'package:share_extend/share_extend.dart';

class EdittemplateScreen extends StatefulWidget {
  const EdittemplateScreen({Key? key}) : super(key: key);

  @override
  State<EdittemplateScreen> createState() => _EdittemplateScreenState();
}

class _EdittemplateScreenState extends State<EdittemplateScreen> {
  TextEditingController txttext = TextEditingController();
  double _textSize = 20.0; // Initial font size
  TextAlign _textAlign =TextAlign.left; // Initial text alignment
  String _fontFamily = ''; // Initial font family

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        title: Text(
          'Festival App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.refresh),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {
              setState(() async {
                RenderRepaintBoundary? boundary =
                imgkey.currentContext!.findRenderObject() as RenderRepaintBoundary;
                ui.Image image = await boundary.toImage();
                ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
                imgdata = byteData!.buffer.asUint8List();
                ImageGallerySaver.saveImage(imgdata!, name: 'poster', quality: 100);
              });
            },
            icon: Icon(Icons.save_alt_outlined),
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: RepaintBoundary(
              key: imgkey,
              child: Container(
                height: 450,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: (isimage)
                        ? AssetImage(
                      festivallist[index]['images'][postbackgroundimage],
                    )
                        : const AssetImage(''),
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
                        txttext.text, // Apply text alignment
                        textAlign: _textAlign,
                        style: TextStyle(
                          color: colorlist[posttextcolor],
                          fontSize: _textSize,
                          fontFamily: _fontFamily,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 230, left: 20),
            child: Container(
              height: 80,
              width: 380,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            backgroundColor: Colors.white,
                            content: editcontainer(),
                          ),
                        );
                      });
                    },
                    child: const Icon(Icons.edit, color: Colors.white),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    child: isFavorite
                        ? const Icon(Icons.favorite, color: Colors.white)
                        : const Icon(Icons.favorite_border, color: Colors.white),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 300,
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text('Font Size'),
                                  trailing: IconButton(
                                    icon: Icon(Icons.add),
                                    onPressed: () {
                                      setState(() {
                                        _textSize += 2.0;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: Text('Font Size'),
                                  trailing: IconButton(
                                    icon: Icon(Icons.remove),
                                    onPressed: () {
                                      setState(() {
                                        _textSize -= 2.0;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: Text('Text Alignment'),
                                  trailing: DropdownButton<TextAlign>(
                                    value: _textAlign,
                                    items: const [
                                      DropdownMenuItem<TextAlign>(
                                        value: TextAlign.left,
                                        child: Text(
                                          'Left',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      DropdownMenuItem<TextAlign>(
                                        value: TextAlign.center,
                                        child: Text(
                                          'Center',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      DropdownMenuItem<TextAlign>(
                                        value: TextAlign.right,
                                        child: Text(
                                          'Right',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _textAlign = value!;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: Text('Font Family'),
                                  trailing: DropdownButton<String>(
                                    value: _fontFamily,
                                    items: [
                                      DropdownMenuItem<String>(
                                        value: 'Roboto',
                                        child: Text(
                                          'Roboto',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      DropdownMenuItem<String>(
                                        value: 'Arial',
                                        child: Text(
                                          'Arial',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      DropdownMenuItem<String>(
                                        value: 'Times New Roman',
                                        child: Text(
                                          'Times New Roman',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      DropdownMenuItem<String>(
                                        value: 'PlayfairDisplay',
                                        child: Text(
                                          'Playfair Display',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ],
                                    onChanged: (value) {
                                      setState(() {
                                        _fontFamily = value!;
                                      });
                                    },
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Icon(Icons.text_fields, color: Colors.white),
                  ),
                  InkWell(
                    onTap: () async {
                      final directory = await getApplicationDocumentsDirectory();
                      File fileImage = await File('${directory.path}/img.png').create();
                      fileImage.writeAsBytesSync(imgdata!);
                      ShareExtend.share(fileImage.path, 'festival');
                    },
                    child: const Icon(Icons.share, color: Colors.white),
                  ),
                  // Button to increase text size
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget editcontainer() {
    return Container(
      height: 150,
      width: 390,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Code for editing background color
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: Colors.white,
                  content: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        colorlist.length,
                            (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              postbackgroundcolor = index;
                            });
                            Navigator.pop(context); // Close dialog
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: colorlist[index],
                              radius: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            child: CircleAvatar(
              child: Icon(Icons.format_color_fill),
            ),
          ),

          // Code for editing text color
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: Colors.white,
                  content: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        colorlist.length,
                            (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              posttextcolor = index;
                            });
                            Navigator.pop(context); // Close dialog
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundColor: colorlist[index],
                              radius: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            child: CircleAvatar(
              child: Icon(Icons.format_color_text),
            ),
          ),

          // Code for editing text input
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: Colors.white,
                  content: SingleChildScrollView(
                    child: TextFormField(
                      controller: txttext,
                      decoration: InputDecoration(
                        hintText: 'Enter your text...',
                      ),
                    ),
                  ),
                  actions: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          // savedText != txttext.text;
                          // Save the text input
                          // For example: savedText = txttext.text;
                        });
                        Navigator.pop(context); // Close dialog
                      },
                      child: Text('Save'),
                    ),
                  ],
                ),
              );
            },
            child: CircleAvatar(
              child: Icon(Icons.text_fields),
            ),
          ),

          // Code for editing background image
          GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: Colors.white,
                  content: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        festivallist[festivalindex]['images'].length,
                            (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              postbackgroundimage = index;
                            });
                            Navigator.pop(context); // Close dialog
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                festivallist[festivalindex]['images'][index],
                              ),
                              radius: 40,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
            child: CircleAvatar(
              child: Icon(Icons.image),
            ),
          ),
        ],
      ),
    );
  }
}
