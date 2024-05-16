// import 'package:abhikalpana/screens/category_card.dart';
// import 'package:flutter/material.dart';

// class homescreen extends StatefulWidget {
//   const homescreen({super.key});

//   @override
//   State<homescreen> createState() => _homescreenState();
// }

// class _homescreenState extends State<homescreen> {
 

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//      // bottomNavigationBar: ,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Center(
//           child: const Text("ABHIKALPANA - The family",textAlign: TextAlign.center, style: TextStyle(
//             color: Colors.black,
//             fontSize: 22,
//             letterSpacing: 0.5,
//             fontWeight: FontWeight.bold,
//           ),),
//         ),

//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 40,
//           ),
//           Center(
//             child:Text("WELCOME TO ABHIKALPANA",style: TextStyle(
//               color: Colors.white,
//               fontSize: 15,
//               fontWeight: FontWeight.bold
//             ),),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//          Center(
//             child:Text("'SPREADING SMILES THROUGH AIR",style: TextStyle(
//               color: Colors.white,
//               fontSize: 15,
//             ),),
//           ),
//           Center(
//             child:Text("WHERE EVERY MOMENT IS A REMINDER",style: TextStyle(
//               color: Colors.white,
//               fontSize: 15,
//             ),),
//           ),
//           Center(
//             child:Text("THAT KINDNESS KNOWS NO BOUNDS.'",style: TextStyle(
//               color: Colors.white,
//               fontSize: 15,
//             ),),
//           ),
//           SizedBox(
//             height: 60,
//           ),
//           // Center(
//           //   child:Text("WHAT WOULD YOU LIKE TO DO",
//           //   style: TextStyle(
//           //     color: Colors.white,
//           //     fontSize: 20,
//           //     fontWeight: FontWeight.w400
//           //   ),)
//           // ),
//           Container(
//             height:400,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 Row(
//                   children: [
//                     Row(
//                        children: [
//                 CategoryCard(
//                   press:(){},
//                   image:"https://www.shutterstock.com/image-vector/chennai-city-water-color-panoramic-260nw-419140405.jpg",  //add an image asset of chennai
//                   title: "ABHIKALPANA",
//                 ),
//                    CategoryCard(
//                   press:(){},
//                   image:"https://www.shutterstock.com/image-vector/vector-panoramic-water-color-illustration-260nw-383431900.jpg", //add an image asset of bangalore
//                   title: "ABHIKALPANA",
//                 ),
//                    CategoryCard(
//                   press:(){},
//                   image:"https://www.shutterstock.com/image-illustration/red-skyline-mumbai-formerly-called-260nw-1382984345.jpg", //add an image asset of mumbai
//                   title: "ABHIKALPANA",
//                 ),
//                    CategoryCard(
//                   press:(){},
//                   image:"https://www.shutterstock.com/image-vector/ahmedabad-city-water-color-panoramic-260nw-419140417.jpg", //add an image asset of ahmedabad
//                   title: "ABHIKALPANA",
//                 ),
//                    CategoryCard(
//                   press:(){},
//                   image:"https://www.shutterstock.com/image-vector/abstract-hyderabad-skyline-color-landmarks-260nw-511968295.jpg", //add an image asset of hyderabad
//                   title: "ABHIKALPANA",
//                 ),
//                    CategoryCard(
//                   press:(){},
//                   image:"https://st4.depositphotos.com/1921043/39325/v/1600/depositphotos_393252400-stock-illustration-delhi-india-city-skyline-color.jpg", //add an image asset of delhi
//                   title: "ABHIKALPANA",
//                 ),
//               ],
//                     ),
//                   ],
//                 ),
//               ],
            
//             ),
//           ),
          
//         ],
        
//       ),
      
//     );
//   }
// }