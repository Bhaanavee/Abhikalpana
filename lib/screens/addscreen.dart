// import 'package:flutter/material.dart';
// // import 'package:firebase_core/firebase_core.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Student Attendance',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: addscreen e(),
//     );
//   }
// }

// class addscreen extends StatefulWidget {
//   @override
//   _addscreenState createState() => _addscreenState();
// }

// class _addscreenState extends State<addscreen > {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController usnController = TextEditingController();

//   int attendance = 0;

//   Future<void> checkAttendance() async {
//     WidgetsFlutterBinding.ensureInitialized();
//     // await Firebase.initializeApp();
//     // Get current user ID (assuming user is already authenticated)
//     String userId = 'user_id_placeholder';

//     // Access Firestore instance
//     final FirebaseFirestore firestore = FirebaseFirestore.instance;

//     // Reference to the document for the current user
//     final DocumentReference<Map<String, dynamic>> userDocRef =
//         firestore.collection('users').doc(userId);

//     // Get user data from Firestore
//     final DocumentSnapshot<Map<String, dynamic>> userData =
//         await userDocRef.get();

//     // Check if user data exists
//     if (userData.exists) {
//       // Update attendance if user data exists
//       setState(() {
//         attendance = userData['attendance'] + 1;
//       });
//       // Update attendance in Firestore
//       await userDocRef.update({'attendance': attendance});
//     } else {
//       // Add new user data with attendance 1
//       await userDocRef.set({'attendance': 1});
//       setState(() {
//         attendance = 1;
//       });
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Student Attendance'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: nameController,
//               decoration: InputDecoration(labelText: 'Name'),
//             ),
//             SizedBox(height: 10),
//             TextField(
//               controller: usnController,
//               decoration: InputDecoration(labelText: 'USN'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () async {
//                 await checkAttendance();
//               },
//               child: Text('Check Attendance'),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Current Attendance: $attendance',
//               style: TextStyle(fontSize: 18),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
