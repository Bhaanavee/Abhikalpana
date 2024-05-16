// import 'package:flutter/material.dart';
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
//       home: AttendanceScreen(),
//     );
//   }
// }

// class AttendanceScreen extends StatefulWidget {
//   @override
//   _AttendanceScreenState createState() => _AttendanceScreenState();
// }

// class _AttendanceScreenState extends State<AttendanceScreen> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController usnController = TextEditingController();

//   int attendance = 0;

//   Future<void> checkAttendance() async {
//     final FirebaseFirestore firestore = FirebaseFirestore.instance;
//     final QuerySnapshot<Map<String, dynamic>> result = await firestore
//         .collection('students')
//         .where('usn', isEqualTo: usnController.text)
//         .get();

//     if (result.docs.isNotEmpty) {
//       // Student with given USN found
//       setState(() {
//         attendance = result.docs[0]['attendance'];
//         attendance++;
//       });
//       // Update attendance in Firestore
//       await firestore
//           .collection('students')
//           .doc(result.docs[0].id)
//           .update({'attendance': attendance});
//     } else {
//       // Student not found, mark attendance as 1
//       setState(() {
//         attendance = 1;
//       });
//       // Add student to Firestore
//       await firestore.collection('students').add({
//         'name': nameController.text,
//         'usn': usnController.text,
//         'attendance': attendance,
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








// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class Student {
//   final String name;
//   final String usn;
//   int attendance;

//   Student({required this.name, required this.usn, this.attendance = 0});
// }

// class AttendanceTracker {
//   List<Student> students = [
//     Student(name: 'John Doe', usn: '1BM18CS001', attendance: 5),
//     Student(name: 'Jane Smith', usn: '1BM18CS002', attendance: 3),
//     Student(name: 'Alice Johnson', usn: '1BM18CS003', attendance: 7),
//     // Add more students as needed
//   ];

//   void markAttendanceByName(String name) {
//     Student? student = students.firstWhere((s) => s.name == name, orElse: () => null);
//     if (student != null) {
//       student.attendance++;
//       print('Attendance marked for ${student.name}.');
//     } else {
//       print('Student with name $name not found.');
//     }
//   }

//   void markAttendanceByUsn(String usn) {
//     Student? student = students.firstWhere((s) => s.usn == usn, orElse: () => null);
//     if (student != null) {
//       student.attendance++;
//       print('Attendance marked for ${student.name}.');
//     } else {
//       print('Student with USN $usn not found.');
//     }
//   }

//   int? getAttendanceByName(String name) {
//     Student? student = students.firstWhere((s) => s.name == name, orElse: () => null);
//     return student?.attendance;
//   }

//   int? getAttendanceByUsn(String usn) {
//     Student? student = students.firstWhere((s) => s.usn == usn, orElse: () => null);
//     return student?.attendance;
//   }
// }

// class MyApp extends StatelessWidget {
//   final AttendanceTracker attendanceTracker = AttendanceTracker();
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController usnController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Student Attendance Tracker',
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Student Attendance Tracker'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               TextField(
//                 controller: nameController,
//                 decoration: InputDecoration(labelText: 'Enter Name'),
//               ),
//               SizedBox(height: 10),
//               TextField(
//                 controller: usnController,
//                 decoration: InputDecoration(labelText: 'Enter USN'),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   attendanceTracker.markAttendanceByName(nameController.text);
//                   attendanceTracker.markAttendanceByUsn(usnController.text);
//                 },
//                 child: Text('Mark Attendance'),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   int? attendanceByName = attendanceTracker.getAttendanceByName(nameController.text);
//                   int? attendanceByUsn = attendanceTracker.getAttendanceByUsn(usnController.text);
//                   print('Attendance by Name: $attendanceByName');
//                   print('Attendance by USN: $attendanceByUsn');
//                 },
//                 child: Text('Get Attendance'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
