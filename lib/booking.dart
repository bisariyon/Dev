import 'package:flutter/material.dart';
import 'package:project/homepage.dart';

class booking extends StatefulWidget {
  booking({super.key});

  @override
  State<booking> createState() => _bookingState();
}

class _bookingState extends State<booking> {
  TextEditingController _search= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.black87,

    ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black87,
        unselectedFontSize: 17,
        selectedItemColor: Colors.blue,
        selectedFontSize: 17,
        unselectedItemColor: Colors.blue,
        items:  [

    // BottomNavigationBarItem(
    //     icon: IconButton(onPressed: (){
    //       Navigator.pop(context);
    //     },
    //         icon: Icon(Icons.home,color: Colors.white,size: 30,)
    //     ),
    //     label: "Home"
    // ),

    BottomNavigationBarItem(
    icon: IconButton(iconSize: 30,onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()
    )
    );
    },
    icon: const Icon(Icons.home),
    color: Colors.white,tooltip: "home",
    ),
    label: "Home",
    ),


    const BottomNavigationBarItem(
    icon: Icon(Icons.search,color: Colors.white,size: 30,),
    label: "Search",
    ),

    const BottomNavigationBarItem(
    icon: Icon(Icons.calendar_month,color: Colors.white,size: 30,),
    label: "Bookings",
    ),


    ],
    ),
      body: Center(
          child: Text("Coming soon"
          )
      ),


    );
  }
}