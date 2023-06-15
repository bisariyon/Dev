import 'package:flutter/material.dart';
import 'package:project/homepage.dart';

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
        backgroundColor: Colors.black87,
        title: Center(child: Text("Search",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),
        )
        ),
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

          // const BottomNavigationBarItem(
          //     icon: Icon(Icons.calendar_month,color: Colors.white,size: 30,),
          //     label: "Bookings",
          // ),

          BottomNavigationBarItem(
            icon: IconButton(iconSize: 30,onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()
              )
              );
            },
              icon: const Icon(Icons.calendar_month),
                color: Colors.white,tooltip: "Bookings",
            ),
            label: "Bookings",
          ),


        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black87,
          child: Column(
            children: [
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
                                Text("Plumbers",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
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
                                  Text("   Electrician",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
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
                                  Text("Painter",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
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
                            const SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text("     Home Cleaning",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                                    Text("who helps you in cleaning house",style: TextStyle(fontSize: 18,color: Colors.white),),

                                  ],
                                ),
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
                                  Text("Car Washers",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                                  Text("who helps you in cleaning the car",style: TextStyle(fontSize: 18,color: Colors.white),),

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
                                  Text("  Car Repairing",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
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
                                  Text("   Cooking",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
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