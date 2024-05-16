// import 'package:flutter/material.dart';

// class CategoryCard extends StatelessWidget {
//   final String title,image;
//   final VoidCallback press;
//   const CategoryCard({
//     super.key, required this.title, required this.image, required this.press,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left:20.0,right: 10),
//           child: InkWell(
//             onTap: press,
//             child: Material(
//               elevation:8,
//               borderRadius: BorderRadius.circular(20),
//               child: Container(
//                 // height: 600,
//                 // width: 300,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Padding(
//                   padding:EdgeInsets.symmetric(
//                     horizontal: 50,vertical: 50.0
//                   ),
//                   child: Row(children: [
                    
                    
//                       //if adding through asset-> AssetImage
                  
//                     SizedBox(
//                       height: 200,
//                       width: 200,
//                       child: Image(image: NetworkImage(image),),
//                     ),
                  
//                 ],
//               ),),
//             ),
//           ),
//         ),
//     ),
//     SizedBox(
//       height: 10,
//     ),
//       Text(title,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold
//                 ),
//               ),],
    
//     );
//   }
// }