//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './commentScreen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'homeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  bool _like = false;
  int _value = 1;
   getContianer(BuildContext context, String feed){
    
    return  Container(
      
      height: MediaQuery.of(context).size.height*0.7,
      
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width *0.75,
            height: MediaQuery.of(context).size.height*0.55,
            child: Card(
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                  child:Image.asset(
                feed,
                height: 400,
                width: 200,
                fit: BoxFit.fill,
              ),
                                    shape: RoundedRectangleBorder(
                                     borderRadius: new BorderRadius.only(
                    topLeft:  const  Radius.circular(35.0),
                    topRight: const  Radius.circular(35.0),
                    bottomLeft: const  Radius.circular(35.0),
                    bottomRight: const  Radius.circular(35.0),
                    )
                                    ),
                                  elevation: 5,
                              margin: EdgeInsets.all(5),
                            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*.05,
                              width: MediaQuery.of(context).size.width *0.7,
                        decoration: BoxDecoration(
                          //borderRadius: BorderRadius.only(bottomLeft: Radius.,
                          
                  
                        color: Colors.white            
                        ),
                        //color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(
                                      _like == true ? Icons.favorite: Icons.favorite_border,
                                      size: 30,),
                                    // onPressed: (){
                                    //   return SnackBar();
                                    //   setState(() {
                                    //     _like = !_like;
                                    //   });
                                    // },
                                    onPressed:  () {
                                     // _like = !_like;
                                      setState(() {
                                        _like = !_like;
                                      });
                      final snackBar = SnackBar(
                      content: Text( _like == true ?'like': 'Dislike',
                      style: GoogleFonts.poppins(color: Colors.white),),
                         action: SnackBarAction(
                        label: 'Undo',textColor: Colors.white,
                        onPressed: () {
                      // Some code to undo the change.
                      setState(() {
                  _like = !_like;
                });

                        },
                  ),
                  );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
        },
                                  ),
                                   IconButton(
                                    icon: Icon(Icons.cloud_circle,size:30),
                                    onPressed: (){
                                      Navigator.of(context).pushNamed(CommentScreen.routeName);
                                    },
                                  ),
                                ],
                              ),
                            ),
                            //SizedBox(width: 15,),
                            Container(
                              color: Colors.white,
                              child: IconButton(
                                icon: Icon(Icons.arrow_drop_down, size: 30,),
                                onPressed: (){
                                  return DropdownButton(
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text("First Item"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Second Item"),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text("Third Item"),
                  value: 3
                ),
                DropdownMenuItem(
                    child: Text("Fourth Item"),
                    value: 4
                )
              ],
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              }
              );
                                },
                                
        ),
                            ),
        ],
      ),
    ),
        ],
      ),
    );
  }

  headerBar(BuildContext context, String profile,String name, String time,String brief)
  {
    return  Container(
              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width*0.98,
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                 SizedBox(
                   width: MediaQuery.of(context).size.width*0.03,
                 ),
                  Container(
                    height: MediaQuery.of(context).size.height*0.07,
                    width: MediaQuery.of(context).size.height*0.07,
                    decoration: BoxDecoration(
                      // color: Theme.of(context).primaryColor,
                      // borderRadius: BorderRadius.circular(15),
                      borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 1.0),
                  colors: [const Color(0xbd313cb9), const Color(0xc19d1583)],
                  stops: [0.0, 1.0],
                    ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x66000000),
                    offset: Offset(0, 1),
                    blurRadius: 6,
                  ),
                ],
                    ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Card(
                        
                        child:Image.asset(
                profile,
                
                fit: BoxFit.fill,
              ),
               
                      ),
                    ),
                  ),  
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.03,
                  ),
                  Container(
                    //color: Theme.of(context).primaryColor,
                    height: MediaQuery.of(context).size.height*0.09,
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(name,
                              style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.bold),),
                              //SizedBox(height: 0.001,),
                              Text(brief,
                              style: GoogleFonts.poppins(fontSize: 11),),
                            ],
                          ),
                        ),
                        Container(
                          child: Text(time,
                          style: TextStyle(fontSize: 10),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height ,
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            

            headerBar(context,'assets/images/beach.jpg','Alexania','1 hour ago','Boston'),

            Container(
              height: MediaQuery.of(context).size.height*0.65,
              
              child: PageView.builder(
            itemCount: 10,
            controller: PageController(viewportFraction: 0.8),
            onPageChanged: (int index) => setState(() => _index = index),
            itemBuilder: (_, i) {
              return Transform.scale(
                scale: i == _index ? 1 : 0.9,
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: getContianer(context,'assets/images/beach.jpg'),
                  ),
                ),
              );
            },
              ),
            ),

            SizedBox(
              height: 10,
            ),
            
            headerBar(context,'assets/images/Balcklady.jpg','Emi Wong','2Hours ago','LA'),
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Card(
                shape: RoundedRectangleBorder( borderRadius: new BorderRadius.only(
                      topLeft:  const  Radius.circular(35.0),
                      topRight: const  Radius.circular(35.0),
                      bottomLeft: const  Radius.circular(35.0),
                      bottomRight: const  Radius.circular(35.0),
                      ),
                ),
                elevation: 5,
              child:getContianer(context,'assets/images/fancydress.jpg'),
              ),
            ),
               
           
            SizedBox(height: 20),
//'assets/images/halfphoto.jpg'
            headerBar(context,'assets/images/yellowdress.jpg','Tessa Young','1 day ago','London'),
            
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Card(
                shape: RoundedRectangleBorder( borderRadius: new BorderRadius.only(
                      topLeft:  const  Radius.circular(35.0),
                      topRight: const  Radius.circular(35.0),
                      bottomLeft: const  Radius.circular(35.0),
                      bottomRight: const  Radius.circular(35.0),
                      ),
                ),
                elevation: 5,
              child:getContianer(context,'assets/images/halfphoto.jpg'),
              ),
            ),
               
          ],
        ),
      ),
    );
  }
}