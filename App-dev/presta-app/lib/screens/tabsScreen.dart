import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './hashScreen.dart';
import './homeScreen.dart';
import './personalProfileScreen.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/';
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;
  
  @override
  void initState() {
    _pages =[
      {
        'page': HomeScreen(),
        'title' : 'PRESTA',
      },
      {
        'page' :HashtagScreen(),
        'title' : 'TRENDING',
      },
      {
        'page' : ProfileScreen(),
        'title' : 'PROFILE',
      },

    ];
    super.initState();
  }

  void _selectedPage(int index){
    setState((){
      _selectedPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(_pages[_selectedPageIndex]['title'],
            // style: TextStyle(color: Colors.indigo[900]),
            // //style: TextStyle(color: Colors.purple,),
            style: GoogleFonts.poppins(
              fontSize: 30,
              color: Colors.purple,
              fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Colors.white24,
          ),
         // drawer: MainDrawer(),
          
        body: _pages[_selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectedPage,
          backgroundColor: Colors.white30,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.purple,
          currentIndex: _selectedPageIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('FEED'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.trending_up),
              title: Text('HASHTAGS'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text('PROFILE'),
            ),
          ],
        ),
      
    );
  }
}