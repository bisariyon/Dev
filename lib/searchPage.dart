import 'package:flutter/material.dart';
import 'package:project/booking.dart';
import 'package:project/searchPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project/homepage.dart';
import 'package:project/account.dart';


class searchPage extends StatefulWidget {
  searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  TextEditingController _search= TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: BackButton(color: Colors.white,
        ),
        title: Padding(
          padding: const EdgeInsets.fromLTRB(80, 20, 0, 10),
          child: Text("Search",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),
          ),
        ),
      ),
      backgroundColor: Colors.black87,

      bottomNavigationBar: Container(
        height: 75,
          color: Colors.black87,
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
            selectedIndex: 1,



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

      body: SafeArea(
        child: Container(
          color: Colors.black87,
          child: Column(
            children: [
              SizedBox(height: 6,),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 15, 5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(30),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0.0, 0.2),
                    child: TextField(
                      controller: _search,

                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText:" Search For Services",
                        hintStyle: TextStyle(color: Colors.white,fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [


                      Row(
                        children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(60),
                                child: Image.asset("assets/plumber.jpg",
                                  fit:BoxFit.cover ,),
                              ),
                            ),
                          ),
                        ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Center(
                                  child: Text("Plumbers",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),
                                  ),
                                ),

                                Text("who helps you in plumbing ",style: TextStyle(fontSize: 18,color: Colors.white),),
                              ],
                            ),
                          )
                  ]
                      ),
                      Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(60),
                                    child: Image.asset("assets/electrician.jpg",
                                      fit:BoxFit.cover ,),
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Center(child: Text("Electrician",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                                  Text("who helps you in electrical ",style: TextStyle(fontSize: 18,color: Colors.white),),

                                ],
                              ),
                            )
                          ]
                      ),
                      Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(60),
                                    child: Image.asset("assets/painter.jpg",
                                      fit:BoxFit.cover ,),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Center(child: Text("Painter",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                                  Text("who helps you in painting",style: TextStyle(fontSize: 18,color: Colors.white),),

                                ],
                              ),
                            )
                          ]
                      ),
                      Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(60),
                                    child: Image.asset("assets/carpenter.jpg",
                                      fit:BoxFit.cover ,),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text("   Carpenter",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                                  Text("who helps you in furniture ",style: TextStyle(fontSize: 18,color: Colors.white),),

                                ],
                              ),
                            )
                          ]
                      ),
                      Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(60),
                                    child: Image.asset("assets/carpet.jpg",
                                      fit:BoxFit.cover ,),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Center(child: Text("Cleaning",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                                  Text("who helps you in cleaning ",style: TextStyle(fontSize: 18,color: Colors.white),),

                                ],
                              ),
                            )
                          ]
                      ),
                      Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(60),
                                    child: Image.asset("assets/sfg.jpg",
                                      fit:BoxFit.cover ,),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Center(child: Text("Car Washers",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                                  Text("who helps you in cleaning car",style: TextStyle(fontSize: 18,color: Colors.white),),

                                ],
                              ),
                            )
                          ]
                      ),
                      Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(60),
                                    child: Image.asset("assets/e.jpg",
                                      fit:BoxFit.cover ,),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Center(child: Text("Car Repairing",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                                  Text("who helps you in repairing car",style: TextStyle(fontSize: 18,color: Colors.white),),

                                ],
                              ),
                            )
                          ]
                      ),
                      Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(60),
                                    child: Image.asset("assets/r.jpg",
                                      fit:BoxFit.cover ,),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Center(child: Text("Cooking",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),)),
                                  Text("who helps you in cooking ",style: TextStyle(fontSize: 18,color: Colors.white),),

                                ],
                              ),
                            )
                          ]
                      ),





                    ],
                  ),
                ),
              )




            ],
          ),
        ),
      ),
    );
  }
}