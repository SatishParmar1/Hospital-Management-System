import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:ui';

class CarouselSliderExample extends StatefulWidget {
  @override
  _CarouselSliderExampleState createState() => _CarouselSliderExampleState();
}

class _CarouselSliderExampleState extends State<CarouselSliderExample> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
  Text(
  'Index 0: account_balance_rounded',
  style: optionStyle,
  ),
  Text(
  'Index 1: Business',
  style: optionStyle,
  ),
  Text(
  'Index 2: School',
  style: optionStyle,
  ),
  ];

  void _onItemTapped(int index) {
  setState(() {
  _selectedIndex = index;
  });
  }
  void hosiptal() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hospital Management System"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(

                children: [

                  SizedBox(height: 20,),
                  CarouselSlider(
                    items: [
                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage('assets/hello.jpg'),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage('assets/hello1.jpg'),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10.0),
                            image: DecorationImage(
                              image: AssetImage('assets/download.jpg'),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 230.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 600),
                      viewportFraction: 0.8,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              hosiptal();
                            },
                            child: Text("Hospital", style: TextStyle(
                                color: Colors.black87, fontSize: 18),),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.deepOrangeAccent),
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red,
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Doctors", style: TextStyle(
                                color: Colors.black87, fontSize: 18),),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.deepOrangeAccent),
                            ),
                          )
                      ),
                      Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),

                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Facilities", style: TextStyle(
                                color: Colors.black87, fontSize: 17),),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.deepOrangeAccent),
                            ),
                          )
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Row(
                              children: [
                                Container(
                                  height: 130,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/download.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(left: 10),
                                  child: Container(
                                    height: 130,
                                    width: 230,
                                    decoration: BoxDecoration(

                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(height: 0),
                                        Container(
                                          child: Text(
                                            'Saket Hospital',
                                            style:TextStyle(fontSize: 30,color: Colors.black54,fontWeight: FontWeight.bold,),

                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              child:
                                              Icon(Icons.location_on,size: 25,),

                                            ),
                                            Padding(padding: EdgeInsets.only(left: 10),
                                            child:Container(
                                              child: Text("Mansrover, Jaipur",style: TextStyle(
                                                fontSize: 18,
                                              ),),
                                            ),
                                            ),
                                          ],
                                        ),


                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              child: Icon(Icons.star,size: 20,color:Colors.yellow[500],),
                                            ),
                                            Container(
                                              child: Icon(Icons.star,size: 20,color:Colors.yellow[500],),
                                            ),
                                            Container(
                                              child: Icon(Icons.star,size: 20,color:Colors.yellow[500],),
                                            ),
                                            Container(
                                              child: Icon(Icons.star,size: 20,color:Colors.yellow[500],),
                                            ),
                                            Container(
                                              child: Icon(Icons.star,size: 20,color:Colors.yellow[500],),
                                            ),
                                            Padding(padding: EdgeInsets.only(left: 10),
                                            child:Container(
                                              child: Text("(233)",style: TextStyle(
                                                fontSize: 15,
                                              ),)
                                            ),
                                            ),
                                          ],
                                        ),

                                        Container(
                                          width: 260,
                                          decoration: BoxDecoration(

                                          ),
                                          child: ElevatedButton(onPressed: (){}, child: Text("Visit",style: TextStyle(
                                            fontSize: 20,color: Colors.deepOrangeAccent
                                          ),),
                                            style: ButtonStyle(
                                              backgroundColor: MaterialStateProperty.all(
                                                  Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),





                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
     color: Colors.deepOrangeAccent,
     shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child:
          Padding(padding: EdgeInsets.only(left: 0),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                    ElevatedButton(onPressed: (){}, child: Icon(Icons.account_balance_rounded,size: 32,),
                     style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Colors.deepOrangeAccent),
                      ),
                    ),
              ElevatedButton(onPressed: () {} , child: Icon(Icons.account_circle,color: Colors.white,size: 32,),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Colors.deepOrangeAccent
                  ),
                ),),
              ElevatedButton(onPressed: () {} , child: Icon(Icons.account_balance_wallet_rounded,color: Colors.white,size: 32,),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Colors.deepOrangeAccent
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {} , child: Icon(Icons.add_a_photo_rounded,color: Colors.white,size: 32,),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Colors.deepOrangeAccent),
                ),),

            ],
          ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child:Icon(Icons.home_filled,color: Colors.white,)
        ,
      backgroundColor: Colors.deepOrangeAccent,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
