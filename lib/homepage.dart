import 'package:flutter/material.dart';
import 'package:project/account.dart';
import 'package:project/booking.dart';
import 'package:project/searchPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';



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
        backgroundColor: Colors.green,
        leading: Builder(
          builder: (BuildContext context){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: ()  {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                color: Colors.white,
              ),
            );
          },
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){},
                icon: Icon(Icons.settings,
              color: Colors.white,
                ),
            ),
          ),

        ],
      ),


        drawer: NavigationDrawer(),



      body: SafeArea(
        child: Container(
          color: Colors.black87,
          child: SingleChildScrollView(
            child: Column (
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 15, 5),
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
                        padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                        child: SizedBox(
                          height: 160,
                          width: 300,
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
                        padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                        child: SizedBox(
                          height: 160,
                          width: 300,
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
                        padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                        child: SizedBox(
                          height: 160,
                          width: 300,
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
                        padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                        child: SizedBox(
                          height: 160,
                          width: 300,
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
                  trailing: Text("View All",style: TextStyle(fontSize: 18,color: Colors.green),),
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
                  trailing: Text("View All",style: TextStyle(fontSize: 18,color: Colors.green),),
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
                  trailing: Text("View All",style: TextStyle(fontSize: 18,color: Colors.green),),
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
                          width: 150,
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
                              size: const Size.fromRadius(60),
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

      backgroundColor: Colors.black87,
      bottomNavigationBar: Container(
        color: Colors.black87,
        height: 75,
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


    );

  }
}





class NavigationDrawer extends StatelessWidget {

  // NavigationDrawer({Key? key}): super(key:key)
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),

    ),
  );

  Widget buildHeader(BuildContext context) => Container(
    color:  Colors.black87,
    padding: EdgeInsets.only(
      top:20+MediaQuery.of(context).padding.top,
      bottom: 24,

    ),
    child:  Column(
      children: [
        CircleAvatar(
          radius: 52,
          backgroundImage: AssetImage('assets/chris.jpg'),
        ),
        SizedBox(height: 15,),
        Text('Deepanshu Bisariya',style:TextStyle(
          fontSize: 20,color: Colors.white,
        ),
        ),

        Text('deepbisariya@gmail.com',style:TextStyle(
          fontSize: 14,color: Colors.white,
        ),
        ),

        SizedBox(height: 15,),
       Container(
         decoration: BoxDecoration(
           color: Colors.blue,
           borderRadius: BorderRadius.circular(30),

         ),
         child: Padding(
           padding: const EdgeInsets.all(16.0),
           child: Text('Edit Profile',style:TextStyle(
             fontSize: 20,color: Colors.white,
           ),
           ),
         ),

       ),
      ],
    ),
  );

  Widget buildMenuItems(BuildContext context) => Padding(
    padding: const EdgeInsets.fromLTRB(8, 8, 0, 0),
    child: Column(
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Home'),
          onTap: () =>
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homepage()
              ),
              ),

        ),


        ListTile(
          leading: const Icon(Icons.search),
          title: const Text('Search'),
          onTap: () =>
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => searchPage(),
              ),
              ),
        ),
        ListTile(
          leading: const Icon(Icons.calendar_month),
          title: const Text('Bookings'),
          onTap: () =>
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => booking()
              ),
              ),
        ),

        ListTile(
          leading: const Icon(Icons.person_2_outlined),
          title: const Text('Account'),
          onTap: () =>
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => account()
              ),
              ),
        ),

        const Divider(color: Colors.black,),


        ListTile(
          leading: const Icon(Icons.notification_add_outlined),
          title: Text('Notification'),
          onTap: () {},
        ),

        ListTile(
          leading: const Icon(Icons.favorite_border),
          title: Text('Favourites'),
          onTap: () {},
        ),

        ListTile(
          leading: const Icon(Icons.settings),
          title: Text('Settings'),
          onTap: () {},
        ),

        ListTile(
          leading: const Icon(Icons.share),
          title: Text('Share'),
          onTap: () {},
        ),



        ListTile(
          leading: const Icon(Icons.info),
          title: Text('Logout'),
          onTap: () {},
        ),


      ],
    ),
  );


}