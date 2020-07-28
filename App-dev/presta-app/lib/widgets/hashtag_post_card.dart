import 'package:flutter/material.dart';

class HashtagPostCard extends StatelessWidget {
  final String imageurl;
  final String name;

  HashtagPostCard(this.imageurl, this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 200,
      margin: EdgeInsets.only(left: 15,),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.all(5),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imageurl,
                height: 400,
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white60,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      name,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )),
              bottom: 3,
              right: 5,
            ),
          ],
        ),
      ),
    );
  }
}
