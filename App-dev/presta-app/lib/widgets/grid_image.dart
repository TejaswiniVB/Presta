import 'package:flutter/material.dart';

class GridImage extends StatelessWidget {
  final String imageURL;

  GridImage(this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10,),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(imageURL,height: 250, width: 125, fit: BoxFit.fill,))),
    );
  }
}