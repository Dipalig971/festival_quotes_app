import 'package:festival_quotes_app/utils/decoration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../utils/variablename.dart';
import '../../../utils/festival_list.dart';
import 'components/backgroundcolor.dart';
import 'components/images.dart';
import 'components/textcolor.dart';

class EdittemplateScreen extends StatefulWidget {
  const EdittemplateScreen({super.key});

  @override
  State<EdittemplateScreen> createState() => _EdittemplateScreenState();
}

class _EdittemplateScreenState extends State<EdittemplateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        title: const Text(
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
            icon: const Icon(Icons.refresh),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.save_alt_outlined),
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 20),
            child: Container(
              height: 450,
              width: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                      AssetImage('${festivallist[festivalindex]['img']}'),
                      fit: BoxFit.cover)),
              child: Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                  ),
                  // child: Center(child: Text('${festivallist[festivalindex]['text']}',style: Theme.of(context).textTheme.titleLarge,)),
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
                            builder: (context) =>
                                AlertDialog(
                                  backgroundColor: Colors.white,
                                  content: editcontainer(),
                                ),
                          );
                        });
                        //Navigator.of(context).pop();
                      },
                      child: const Icon(Icons.edit, color: Colors.white)),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    child: (isFavorite)
                        ? const Icon(Icons.favorite, color: Colors.white)
                        : const Icon(Icons.favorite_border,
                        color: Colors.white),
                  ),
                  InkWell(
                      onTap: () {},
                      child: const Icon(Icons.copy, color: Colors.white)),
                  InkWell(
                      onTap: () {

                      },
                      child: const Icon(Icons.share, color: Colors.white)),
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
          color: Colors.black12, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                showDialog(
                  context: context,
                  builder: (context) =>
                      AlertDialog(
                          backgroundColor: Colors.white,
                          content: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(colorlist.length,
                                      (index) =>
                                      colorcontanier(colorlist[index])),
                            ),
                          )),
                );
              });
            },
            child: const CircleAvatar(
              child: Icon(
                Icons.format_color_fill,
              ),
              backgroundColor: Colors.white,
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                showDialog(
                  context: context,
                  builder: (context) =>
                      AlertDialog(
                          backgroundColor: Colors.white,
                          content: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(colorlist.length,
                                      (index) => Textcolor(colorlist[index])),
                            ),
                          )),
                );
              });
            },
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.format_color_text),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                showDialog(
                    context: context,
                    builder: (context) =>
                        AlertDialog(
                            content: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                    festivallist[festivalindex]['images']
                                        .length,
                                        (index) =>
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              postbackgroundimage=index;
                                            });
                                          },
                                          child: imagecontanier(
                                              festivallist[festivalindex]['images']
                                              [index]),
                                        )),
                              ),
                            ),),);
              });
            },
            child: const CircleAvatar(
              child: Icon(
                Icons.image,
              ),
              backgroundColor: Colors.white,
            ),
          ),
          CircleAvatar(
            child: Icon(Icons.text_fields),
            backgroundColor: Colors.white,
          )
        ],
      ),
    );
  }


}
