import 'package:flutter/material.dart';

Widget Textcolor(Color color) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    ),
  );
}
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       backgroundColor: Colors.red,
//       automaticallyImplyLeading: false,
//       title: const Text(
//         'Festival App',
//         style: TextStyle(
//           color: Colors.white,
//           fontWeight: FontWeight.w500,
//           fontSize: 25,
//         ),
//       ),
//       actions: [
//         IconButton(
//           onPressed: () {},
//           icon: const Icon(Icons.refresh),
//           color: Colors.white,
//         ),
//         IconButton(
//           onPressed: () {},
//           icon: const Icon(Icons.save_alt_outlined),
//           color: Colors.white,
//         ),
//       ],
//     ),
//     body: Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(top: 50, left: 20),
//           child: Container(
//             height: 450,
//             width: 400,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: (isimage)
//                       ? AssetImage(
//                           festivallist[index]['images'][postbackgroundimage],
//                         )
//                       : const AssetImage(''),
//                   fit: BoxFit.cover),
//             ),
//             child: Positioned.fill(
//               child: DecoratedBox(
//                 decoration: BoxDecoration(
//                   color: Colors.black.withOpacity(0.6),
//                 ),
//                  child: Center(child: Text(txttext.text,)),
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         Padding(
//           padding: const EdgeInsets.only(top: 230, left: 20),
//           child: Container(
//             height: 80,
//             width: 380,
//             decoration: BoxDecoration(
//               color: Colors.red,
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 InkWell(
//                     onTap: () {
//                       setState(() {
//                         showDialog(
//                           context: context,
//                           builder: (context) => AlertDialog(
//                             backgroundColor: Colors.white,
//                             content: editcontainer(),
//                           ),
//                         );
//                       });
//                       //Navigator.of(context).pop();
//                     },
//                     child: const Icon(Icons.edit, color: Colors.white)),
//                 InkWell(
//                   onTap: () {
//
//                   }, child: Icon(Icons.text_fields,color: Colors.white,)),
//                 InkWell(
//                   onTap: () {
//                     setState(() {
//                       isFavorite = !isFavorite;
//                     });
//                   },
//                   child: (isFavorite)
//                       ? const Icon(Icons.favorite, color: Colors.white)
//                       : const Icon(Icons.favorite_border,
//                           color: Colors.white),
//                 ),
//                 InkWell(
//                     onTap: () {},
//                     child: const Icon(Icons.copy, color: Colors.white)),
//                 InkWell(
//                     onTap: () {
//                       final directory = getApplicationDocumentsDirectory();
//                       // File FileImage=File("${directory.path}")
//                     },
//                     child: const Icon(Icons.share, color: Colors.white)),
//               ],
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }
// Widget editcontainer() {
//   return Container(
//     height: 150,
//     width: 390,
//     decoration: BoxDecoration(
//       color: Colors.black12,
//       borderRadius: BorderRadius.circular(20),
//     ),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         // Code for editing background color
//         GestureDetector(
//           onTap: () {
//             showDialog(
//               context: context,
//               builder: (context) => AlertDialog(
//                 backgroundColor: Colors.white,
//                 content: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: List.generate(
//                       colorlist.length,
//                           (index) => GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             postbackgroundcolor = index;
//                           });
//                           Navigator.pop(context); // Close dialog
//                         },
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: CircleAvatar(
//                             backgroundColor: colorlist[index],
//                             radius: 20,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//           child: CircleAvatar(
//             child: Icon(Icons.format_color_fill),
//           ),
//         ),
//
//         // Code for editing text color
//         GestureDetector(
//           onTap: () {
//             showDialog(
//               context: context,
//               builder: (context) => AlertDialog(
//                 backgroundColor: Colors.white,
//                 content: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: List.generate(
//                       colorlist.length,
//                           (index) => GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             posttextcolor = index;
//                           });
//                           Navigator.pop(context); // Close dialog
//                         },
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: CircleAvatar(
//                             backgroundColor: colorlist[index],
//                             radius: 20,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//           child: CircleAvatar(
//             child: Icon(Icons.format_color_text),
//             // backgroundColor: Colors.white,
//           ),
//         ),
//
//         // Code for editing background image
//         GestureDetector(
//           onTap: () {
//             showDialog(
//               context: context,
//               builder: (context) => AlertDialog(
//                 backgroundColor: Colors.white,
//                 content: SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: List.generate(
//                       festivallist[festivalindex]['images'].length,
//                           (index) => GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             postbackgroundimage = index;
//                           });
//                           Navigator.pop(context); // Close dialog
//                         },
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: CircleAvatar(
//                             backgroundImage: AssetImage(
//                               festivallist[festivalindex]['images'][index],
//                             ),
//                             radius: 40,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//           child: CircleAvatar(
//             child: Icon(Icons.image),
//             // backgroundColor: Colors.white,
//           ),
//         ),
//       ],
//     ),
//   );
// }i
