import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project/booking.dart';
import 'package:project/homepage.dart';
import 'package:project/searchpage.dart';

class account extends StatefulWidget {
  account({super.key});

  @override
  State<account>  createState() => _accountState();
}

  bool _iconbool = false;
  IconData _iconlight =Icons.wb_sunny;
  IconData _icondark =Icons.nights_stay;

  ThemeData _lightTheme =ThemeData(
    primarySwatch: Colors.green,
    brightness: Brightness.light,
  );
  ThemeData _darkTheme =ThemeData(
  primarySwatch: Colors.blue,

  brightness: Brightness.dark,
  );



class _accountState extends State<account> {
  TextEditingController _account= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _iconbool ? _darkTheme :_lightTheme,
      home: Scaffold(

        appBar: AppBar(

        // backgroundColor: Colors.black87,


          leading: BackButton(color: Colors.white,),

        actions: [
          IconButton(onPressed: (){
            setState(() {
              _iconbool=!_iconbool;
            });
          }, icon: Icon(_iconbool? _icondark :_iconlight),

          )
        ],

        title: const Padding(
          padding: EdgeInsets.fromLTRB(65, 0, 0, 0),
          child: Text("Account",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),
          ),
        ),
    ),

      body: const Center(
          child: Text(
            "Coming soon...",style: TextStyle(fontSize: 30,color: Colors.blue),),
      ),
      backgroundColor: Colors.white,


      bottomNavigationBar: Container(
        height: 75,
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15,vertical: 6),
          child: GNav(
            backgroundColor: Colors.black87,
            color: Colors.white,
            textStyle: TextStyle(color: Colors.white),
            gap: 8,
            tabBackgroundColor: Colors.blueGrey,
            activeColor: Colors.white,
            padding: EdgeInsets.all(16),

            selectedIndex: 3,




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



      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.black87,
      //   // unselectedFontSize: 17,
      //   selectedItemColor: Colors.blue,
      //   // selectedFontSize: 17,
      //   unselectedItemColor: Colors.blue,
      //
      //
      //   items:  [
      //     BottomNavigationBarItem(
      //       icon: IconButton(iconSize: 30,onPressed: (){
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()
      //         )
      //         );
      //       },
      //         icon: const Icon(Icons.home),
      //         color: Colors.white,tooltip: "home",
      //       ),
      //       label: "Home",
      //     ),
      //
      //     BottomNavigationBarItem(
      //       icon: IconButton(iconSize: 30,onPressed: (){
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => searchPage()
      //         )
      //         );
      //       },
      //         icon: const Icon(Icons.search),
      //         color: Colors.white,tooltip: "search",
      //       ),
      //       label: "Search",
      //     ),
      //
      //
      //     BottomNavigationBarItem(
      //       icon: IconButton(iconSize: 30,onPressed: (){
      //         Navigator.push(context, MaterialPageRoute(builder: (context) => booking()
      //         )
      //         );
      //       },
      //         icon: const Icon(Icons.calendar_month),
      //         color: Colors.white,tooltip: "Bookings",
      //       ),
      //       label: "Bookings",
      //     ),
      //
      //   ],
      // ),



    ),
    );

    }
}