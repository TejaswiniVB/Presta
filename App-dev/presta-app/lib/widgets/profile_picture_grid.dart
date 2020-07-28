import 'package:flutter/material.dart';
import './grid_image.dart';

// ignore: must_be_immutable
class ProfilePictureGrid extends StatelessWidget {
  List<String> _pictures = [
    'assets/images/beach.jpg',
    'assets/images/fancydress.jpg',
    'assets/images/dpgirl.jpg',
    'assets/images/girlposing.jpg',
    'assets/images/girlwithbody.jpg',
    'assets/images/yellowdress.jpg',
    'assets/images/halfphoto.jpg',
    //put image url over here
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: _pictures.length,
      itemBuilder: (ctx, index) => Container(
        width: 150,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: GridImage(_pictures[index]),
        ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        //childAspectRatio: 3 / 2,
        //crossAxisSpacing: 10,
        mainAxisSpacing: 30,
      ),
    );
  }
}

