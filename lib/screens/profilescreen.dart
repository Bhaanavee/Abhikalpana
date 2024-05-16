// import 'package:abhikalpana/screens/addscreen.dart';
// import 'package:abhikalpana/screens/homescreen.dart';
// import 'package:abhikalpana/screens/searchscreen.dart';
// import 'package:flutter/material.dart';

// class profileScreen extends StatefulWidget {
//   const profileScreen({super.key});

//   @override
//   State<profileScreen> createState() => _profileScreenState();
// }

// class _profileScreenState extends State<profileScreen> {
//   int currentValue=0;
//   List<Widget> screens=[
//     homescreen(),
//     searchscreen(),
//     addscreen(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//           currentIndex: currentValue,
//           selectedItemColor: Color.fromARGB(255, 37, 37, 234) ,
//           unselectedItemColor: Colors.black,
//           showUnselectedLabels: false,
//           selectedFontSize: 18,
//           unselectedLabelStyle: TextStyle(color: Colors.black),
//           items: <BottomNavigationBarItem>[
//             BottomNavigationBarItem(icon: Icon(Icons.home),label:"HOME"),
//             BottomNavigationBarItem(icon: Icon(Icons.search),label: "SEARCH"),
//             BottomNavigationBarItem(icon: Icon(Icons.add),label: "ADD"),  
//            // BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "PROFILE"),
            
//             ],
//             onTap: (value) {
//               setState(() {
//                 currentValue=value;
//               } );
//             // if(currentValue==3){
//             //   currentValue-=1;
//             // }
           
              
//             },
           

//       ),
//       body: screens[currentValue],
      
//     );
//   }
// }