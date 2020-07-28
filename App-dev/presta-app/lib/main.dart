//import 'dart:html';

import 'package:flutter/material.dart';
import './screens/hashScreen.dart';
import './screens/homeScreen.dart';
import './screens/personalProfileScreen.dart';
import './screens/commentScreen.dart';
//import './widgets/comment.dart';
import './screens/tabsScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primarySwatch: Colors.amber,
        accentColor: Colors.purple,
        //canvasColor: Colors.grey[300],
        ),
      initialRoute: '/',
      routes: {
        '/':(ctx) => TabsScreen(),
        HomeScreen.routeName:(ctx)=> HomeScreen(),
        HashtagScreen.routeName:(ctx)=>HashtagScreen(),
        ProfileScreen.routeName:(ctx)=>ProfileScreen(),
        CommentScreen.routeName:(ctx) => CommentScreen(),
        //Comments.routeName:(ctx) => Comments("I live this fashion style"),
      },
    );
  }
}