import 'package:firebase_core/firebase_core.dart';
// import 'package:abhikalpana/screens/profilescreen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      color: Colors.black,
      title: "Abhikalpana",
      home: profileScreen(),
      debugShowCheckedModeBanner: false,

    );
  }
}

class profileScreen extends StatefulWidget {
  const profileScreen({super.key});

  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  int currentValue=0;
  List<Widget> screens=[
    homescreen(),
    searchscreen(),
    addscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentValue,
          selectedItemColor: Color.fromARGB(255, 37, 37, 234) ,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: false,
          selectedFontSize: 18,
          unselectedLabelStyle: TextStyle(color: Colors.black),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"HOME"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "SEARCH"),
            BottomNavigationBarItem(icon: Icon(Icons.add),label: "ADD"),  
           // BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "PROFILE"),
            
            ],
            onTap: (value) {
              setState(() {
                currentValue=value;
              } );
            // if(currentValue==3){
            //   currentValue-=1;
            // }
           
              
            },
           

      ),
      body: screens[currentValue],
      
    );
  }
}

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
     // bottomNavigationBar: ,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: const Text("ABHIKALPANA - The family",textAlign: TextAlign.center, style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            letterSpacing: 0.5,
            fontWeight: FontWeight.bold,
          ),),
        ),

      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child:Text("WELCOME TO ABHIKALPANA",style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(
            height: 10,
          ),
         Center(
            child:Text("'SPREADING SMILES THROUGH AIR",style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),),
          ),
          Center(
            child:Text("WHERE EVERY MOMENT IS A REMINDER",style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),),
          ),
          Center(
            child:Text("THAT KINDNESS KNOWS NO BOUNDS.'",style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),),
          ),
          SizedBox(
            height: 60,
          ),
          // Center(
          //   child:Text("WHAT WOULD YOU LIKE TO DO",
          //   style: TextStyle(
          //     color: Colors.white,
          //     fontSize: 20,
          //     fontWeight: FontWeight.w400
          //   ),)
          // ),
          Container(
            height:400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Row(
                       children: [
                CategoryCard(
                  press:(){},
                  image:"https://www.shutterstock.com/image-vector/chennai-city-water-color-panoramic-260nw-419140405.jpg",  //add an image asset of chennai
                  title: "ABHIKALPANA",
                ),
                   CategoryCard(
                  press:(){},
                  image:"https://www.shutterstock.com/image-vector/vector-panoramic-water-color-illustration-260nw-383431900.jpg", //add an image asset of bangalore
                  title: "ABHIKALPANA",
                ),
                   CategoryCard(
                  press:(){},
                  image:"https://www.shutterstock.com/image-illustration/red-skyline-mumbai-formerly-called-260nw-1382984345.jpg", //add an image asset of mumbai
                  title: "ABHIKALPANA",
                ),
                   CategoryCard(
                  press:(){},
                  image:"https://www.shutterstock.com/image-vector/ahmedabad-city-water-color-panoramic-260nw-419140417.jpg", //add an image asset of ahmedabad
                  title: "ABHIKALPANA",
                ),
                   CategoryCard(
                  press:(){},
                  image:"https://www.shutterstock.com/image-vector/abstract-hyderabad-skyline-color-landmarks-260nw-511968295.jpg", //add an image asset of hyderabad
                  title: "ABHIKALPANA",
                ),
                   CategoryCard(
                  press:(){},
                  image:"https://st4.depositphotos.com/1921043/39325/v/1600/depositphotos_393252400-stock-illustration-delhi-india-city-skyline-color.jpg", //add an image asset of delhi
                  title: "ABHIKALPANA",
                ),
              ],
                    ),
                  ],
                ),
              ],
            
            ),
          ),
          
        ],
        
      ),
      
    );
  }
}


class CategoryCard extends StatelessWidget {
  final String title,image;
  final VoidCallback press;
  const CategoryCard({
    super.key, required this.title, required this.image, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left:20.0,right: 10),
          child: InkWell(
            onTap: press,
            child: Material(
              elevation:8,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                // height: 600,
                // width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:EdgeInsets.symmetric(
                    horizontal: 50,vertical: 50.0
                  ),
                  child: Row(children: [
                    
                    
                      //if adding through asset-> AssetImage
                  
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Image(image: NetworkImage(image),),
                    ),
                  
                ],
              ),),
            ),
          ),
        ),
    ),
    SizedBox(
      height: 10,
    ),
      Text(title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),],
    
    );
  }
}



class addscreen extends StatefulWidget {
  @override
  _addscreenState createState() => _addscreenState();
}

class _addscreenState extends State<addscreen > {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usnController = TextEditingController();

  int attendance = 0;

  Future<void> checkAttendance() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    // Get current user ID (assuming user is already authenticated)
    String userId = 'user_id_placeholder';

    // Access Firestore instance
    final FirebaseFirestore firestore = FirebaseFirestore.instance;

    // Reference to the document for the current user
    final DocumentReference<Map<String, dynamic>> userDocRef =
        firestore.collection('users').doc(userId);

    // Get user data from Firestore
    final DocumentSnapshot<Map<String, dynamic>> userData =
        await userDocRef.get();

    // Check if user data exists
    if (userData.exists) {
      // Update attendance if user data exists
      setState(() {
        attendance = userData['attendance'] + 1;
      });
      // Update attendance in Firestore
      await userDocRef.update({'attendance': attendance});
    } else {
      // Add new user data with attendance 1
      await userDocRef.set({'attendance': 1});
      setState(() {
        attendance = 1;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Attendance'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: usnController,
              decoration: InputDecoration(labelText: 'USN'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await checkAttendance();
              },
              child: Text('Check Attendance'),
            ),
            SizedBox(height: 20),
            Text(
              'Current Attendance: $attendance',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class searchscreen extends StatefulWidget {
  const searchscreen({super.key});

  @override
  State<searchscreen> createState() => _searchscreenState();
}

class _searchscreenState extends State<searchscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    );
  }
}