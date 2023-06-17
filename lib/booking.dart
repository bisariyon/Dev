import 'package:flutter/material.dart';
import 'package:project/homepage.dart';
import 'package:project/account.dart';
import 'package:project/searchPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class booking extends StatefulWidget {
  booking({super.key});

  @override
  State<booking> createState() => _bookingState();


}

class _bookingState extends State<booking> {
  TextEditingController _search= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
        appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(65, 10, 0, 0),
          child: Text("Bookings",style:TextStyle(color: Colors.white,fontSize: 25,fontWeight:  FontWeight.bold)),
        ),
        backgroundColor: Colors.green,
    leading: BackButton(color: Colors.white,),

    ),


      bottomNavigationBar: Container(
        color: Colors.black,
        height: 75,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 6),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            textStyle: TextStyle(color: Colors.white),
            gap: 8,
            tabBackgroundColor: Colors.blueGrey,
            activeColor: Colors.white,
            padding: EdgeInsets.all(16),
            selectedIndex: 2,



            tabs: [
              GButton(icon: (Icons.home),text: 'Home',onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()
                ),
                );
              },

              ),

              GButton(icon: (Icons.search),text: 'Search',onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => searchPage()
                ),
                );
              },

              ),

              GButton(icon: (Icons.calendar_month),text: 'Bookings',onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => booking()
                ),
                );
              },
              ),

              GButton(icon: (Icons.person),text: 'Account',onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => account()
                ),
                );
              },
              ),
            ],
          ),
        ),
      ),
      body: Center(
          child: Text("Coming soon...",style: TextStyle(color: Colors.blue,fontSize: 30),
          )
      ),
      backgroundColor: Colors.white,

        ),
    );
  }
}
