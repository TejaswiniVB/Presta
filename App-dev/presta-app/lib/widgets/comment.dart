//import 'dart:html';

import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
  static const routeName = 'comments';
  final text;
  Comments(this.text);
  @override
  Widget build(BuildContext context) {
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
                    
                  ),
        title: Text(text),
    );
  }
}