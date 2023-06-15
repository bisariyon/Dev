import 'package:flutter/material.dart';
import 'package:project/booking.dart';
import 'package:project/searchPage.dart';


class homepage extends StatefulWidget {

   homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextEditingController _searchController = TextEditingController();
  int _currentIndex=0;

  final tabs =[
    homepage(),
    searchPage(),
  ];

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
          },
          highlightColor: Colors.blue,
            icon: Icon(Icons.menu),
             color: Colors.white,),
         actions: [
          IconButton(onPressed: (){
          },
            highlightColor: Colors.blue,

            icon: Icon(Icons.settings,),
            color: Colors.white,
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.black87,
          child: SingleChildScrollView(
            child: Column (
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
                        controller: _searchController,

                           decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText:" Search For Services",
                          hintStyle: TextStyle(color: Colors.white,fontSize: 18),
                        ),
    ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),


                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
                        child: SizedBox(
                          height: 160,
                          width: 325,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(60),
                              child: Image.asset("assets/sd.jpg",
                                fit:BoxFit.cover ,),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
                        child: SizedBox(
                          height: 160,
                          width: 325,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(60),
                              child: Image.asset("assets/banner2.jpg",
                                fit:BoxFit.cover ,),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
                        child: SizedBox(
                          height: 160,
                          width: 325,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(60),
                              child: Image.asset("assets/banner1.jpg",
                                fit:BoxFit.cover ,),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 5, 5, 5),
                        child: SizedBox(
                          height: 160,
                          width: 325,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: SizedBox.fromSize(
                              size: Size.fromRadius(60),
                              child: Image.asset("assets/banner.jpg",
                                fit:BoxFit.cover ,),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),

                const ListTile(
                  title: Text("Home Services", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing: Text("View All",style: TextStyle(fontSize: 18,color: Colors.blue),),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width:10,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.plumbing,color: Colors.white,size: 30,),
                            ),
                            SizedBox(height: 10,),
                            Text("Plumbing",style: TextStyle(fontSize: 16,color: Colors.white),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 8, 8),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.electrical_services_rounded,color: Colors.white,size: 30,),
                            ),
                            SizedBox(height: 10,),
                            Text("Electrician",style: TextStyle(fontSize: 16,color: Colors.white),)
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 12, 8),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.style,color: Colors.white,size: 30,),
                            ),
                            SizedBox(height: 10,),
                            Text("Decorators",style: TextStyle(fontSize: 16,color: Colors.white,),)
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 8, 8),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.format_paint_rounded,color: Colors.white,size: 30,),
                            ),
                            SizedBox(height: 10,),
                            Text("Painter",style: TextStyle(fontSize: 16,color: Colors.white,),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 8, 8),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.carpenter,color: Colors.white,size: 30,),
                            ),
                            SizedBox(height: 10,),
                            Text("Carpenter",style: TextStyle(fontSize: 16,color: Colors.white,),)
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 8, 8),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.cleaning_services,color: Colors.white,size: 30,),
                            ),
                            SizedBox(height: 10,),
                            Text("Cleaning",style: TextStyle(fontSize: 16,color: Colors.white,),)
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 8, 8),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.card_travel_rounded,color: Colors.white,size: 30,),
                            ),
                            SizedBox(height: 10,),
                            Text("Car Experts",style: TextStyle(fontSize: 16,color: Colors.white,),)
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 8, 8),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.car_repair,color: Colors.white,size: 30,),
                            ),
                            SizedBox(height: 10,),
                            Text("Car Cleaning",style: TextStyle(fontSize: 16,color: Colors.white,),)
                          ],
                        ),
                      ),


                    ],
                  ),
                ),


                const ListTile(
                  title: Text("Home Construction", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing: Text("View All",style: TextStyle(fontSize: 18,color: Colors.blue),),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [

                      SizedBox(width: 15,),

                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.home,color: Colors.white,size: 30,),
                            ),
                            SizedBox(height: 10,),
                            Text("Interior",style: TextStyle(fontSize: 16,color: Colors.white),)
                          ],
                        ),
                      ),


                      SizedBox(
                        width:0,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.construction,color: Colors.white,size: 30,),
                            ),
                            SizedBox(height: 10,),
                            Text("Construction",style: TextStyle(fontSize: 16,color: Colors.white),)
                          ],
                        ),
                      ),


                      SizedBox(width: 0,),

                      Padding(
                        padding: EdgeInsets.fromLTRB(2, 0, 8, 8),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.architecture,color: Colors.white,size: 30,),
                            ),
                            SizedBox(height: 10,),
                            Text("Architects",style: TextStyle(fontSize: 16,color: Colors.white),)
                          ],
                        ),
                      ),

                      SizedBox(width: 6,),

                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.table_restaurant_rounded,color: Colors.white,size: 30,),
                            ),
                            SizedBox(height: 10,),
                            Text("Furniture",style: TextStyle(fontSize: 16,color: Colors.white),)
                          ],
                        ),
                      ),
                      SizedBox(width: 3,),

                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.person,color: Colors.white,size: 30,),
                            ),
                            SizedBox(height: 10,),
                            Text("Contractor",style: TextStyle(fontSize: 16,color: Colors.white),)
                          ],
                        ),
                      ),
                      SizedBox(width: 2,),

                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.blueGrey,
                              child: Icon(Icons.electric_bolt,color: Colors.white,size: 30,),
                            ),
                            SizedBox(height: 10,),
                            Text("Electrician",style: TextStyle(fontSize: 16,color: Colors.white),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),



                ListTile(
                  title: Text("Popular Service", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing: Text("View All",style: TextStyle(fontSize: 18,color: Colors.blue),),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [

                      const SizedBox(
                        width: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child:SizedBox(
                          height: 125,
                          width: 125,
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

                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          height: 125,
                          width: 150,
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

                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          height: 125,
                          width: 150,
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

                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          height: 125,
                          width: 150,
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

                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: SizedBox(
                          height: 125,
                          width: 150,
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

                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                )

 ],
    ),
          ),
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.black87,
        currentIndex: _currentIndex,
        selectedFontSize: 17,
        // showUnselectedLabels: false,
        unselectedFontSize: 17,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue,

        items:  [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.white,size: 30,
              ),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: IconButton(iconSize: 30,onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => searchPage()
               )
               );
             },
                 icon: const Icon(Icons.search),
               color: Colors.white,tooltip: "search",
             ),
              label: "Search",
          ),

          BottomNavigationBarItem(
            icon: IconButton(iconSize: 30,onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => booking()
              )
              );
            },
              icon: const Icon(Icons.calendar_month),
              color: Colors.white,tooltip: "bookings",
            ),
            label: "Bookings",
          ),

        ],
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      )
    );

  }
}
