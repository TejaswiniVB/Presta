import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommentScreen extends StatefulWidget {
  static const routeName='comment_screen';

  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  final _textFieldController =new TextEditingController();

  @override
  void dispose() {
    _textFieldController.dispose();
    super.dispose();
  }

  comm(String text, String name,BuildContext context,String img)
  {
    return ListTile(
      leading:  Container(
                    height: MediaQuery.of(context).size.height*0.09,
                    width: MediaQuery.of(context).size.height*0.09,
                    decoration: BoxDecoration(
                      // color: Theme.of(context).primaryColor,
                      // borderRadius: BorderRadius.circular(15),
                      borderRadius: BorderRadius.circular(15.0),
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
                    padding: const EdgeInsets.all(6.0),
                    child: Card(
                      child:Image.asset(
                img,
                fit: BoxFit.fill,
              ),
                    ),
                  ),  
                  ),
            title: Text(text,
                  style:GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold,
                  fontSize: 14),
                  ),
             subtitle: Text(name,
             style: GoogleFonts.poppins(color: Colors.white70),),      
    );
  }
 cards(String text , BuildContext context)
 {
   return Container(
     height: MediaQuery.of(context).size.height * 0.025,
     width: MediaQuery.of(context).size.width * 0.19,
     decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(10),
       color: Colors.black,
     ),
     child: Center(
       child: Text(text,
       style: TextStyle(fontSize: 9,color: Colors.white),),
     ),
   );
 }
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      //body:Container(),
      bottomSheet: TextField(
        //autofocus: true,
        selectionHeightStyle: BoxHeightStyle.includeLineSpacingBottom,
            controller: _textFieldController,
            decoration: InputDecoration(
              //Add th Hint text here.
              hintText: "Your Comment",
              border: OutlineInputBorder(
              
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
      
      
      body: Container(
        color: Colors.black,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height*0.65,
              
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
               
                titlePadding: EdgeInsets.all(15),
                background: Hero(
                  tag:  'assets/images/Balcklady.jpg',
                  child: Image.asset(
                'assets/images/yellowdress.jpg',
                fit: BoxFit.fill,
              ),
                ),
              ),
            ),
            SliverList(
              
              delegate: SliverChildListDelegate(
                [
                  SizedBox(height: 20),
                  comm("amazing collection", "Yolo yang", context,'assets/images/fancydress.jpg'),
                  comm("OH my God, love these", "Emi wong", context,'assets/images/halfphoto.jpg'),
                 comm("Hottieeee", "Yolo yang", context,'assets/images/yellowdress.jpg'),
                 comm("Where did you get this", "Tessa Young", context,'assets/images/Balcklady.jpg'),
                 comm("if you are reading you're bleh", "Bella", context,'assets/images/beach.jpg'),
                 comm("The life chose me", "Heyleee", context,'assets/images/fancydress.jpg'),
                 comm("where do you think you came from", "Yolo yang", context,'assets/images/halfphoto.jpg'),
                 comm("No marks december", "Lexie", context,'assets/images/Balcklady.jpg'),
                 comm("Beware of snakes", "Stella", context,'assets/images/beach.jpg'),
                 comm("amazing collection", "Starla", context,'assets/images/halfphoto.jpg'),
                 comm("ugly life chose me", "Tushar", context,'assets/images/Balcklady.jpg'),
                 comm("You dont have to read everything", "Tejaswini", context,'assets/images/fancydress.jpg'),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1,)
                ],
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}