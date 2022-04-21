// import 'package:flutter/material.dart';
// import 'package:prac/screens/web_layout.dart';
// import 'package:prac/utils/colors.dart';
// import 'package:prac/utils/info.dart';

// // // class TopAlbumCard extends StatelessWidget {
// // //   const TopAlbumCard({Key? key}) : super(key: key);

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Padding(
// // //       padding: const EdgeInsets.only(bottom: 10),
// // //       child: SizedBox(
// // //         height: 300,
// // //         child: ListView.builder(
// // //             scrollDirection: Axis.horizontal,
// // //             shrinkWrap: true,
// // //             itemCount: info.length,
// // //             itemBuilder: (context, index) {
// // //               return SingleChildScrollView(
// // //                 child: Row(
// // //                   children: [
// // //                     Padding(
// // //                       padding: const EdgeInsets.all(8.0),
// // //                       child: Column(
// // //                         crossAxisAlignment: CrossAxisAlignment.start,
// // //                         children: [
// // //                           InkWell(
// // //                             child: Container(
// // //                               width: 210,
// // //                               height: 210,
// // //                               child: Image.network(
// // info[index]['albumArt'].toString(),
// // //                               ),
// // //                             ),
// // //                           ),
// // //                           SizedBox(height: 4),
// // //                           Text(
// // //                             info[index]['name'].toString(),
// // //                             style: TextStyle(
// // //                               fontWeight: FontWeight.bold,
// // //                               fontSize: 16,
// // //                               color: textColor,
// // //                             ),
// // //                           ),
// // //                           SizedBox(height: 4),
// // //                           Text(
// // //                             info[index]['artist'].toString(),
// // //                             style: TextStyle(
// // //                               fontWeight: FontWeight.bold,
// // //                               color: Colors.blueGrey,
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),
// // //               );
// // //             }),
// // //       ),
// // //     );
// // //   }
// // }

// class TopAlbumCard extends StatefulWidget {
  
//   TopAlbumCard({
//     Key? key,
//     required this.item
//   }) : super(key: key);
//   CardItem item;

//   @override
//   State<TopAlbumCard> createState() => _TopAlbumCardState();
// }

// class _TopAlbumCardState extends State<TopAlbumCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 200,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Expanded(
//             child: Image.network(
//               item.
//             ),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             'name',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 24,
//               color: textColor,
//             ),
//           ),
//           Text(
//             'artist',
//             style: TextStyle(
//               color: Colors.blueGrey,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
