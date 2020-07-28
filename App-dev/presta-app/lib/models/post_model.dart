//import 'package:flutter/material.dart';

class PostModel {
  final String imageUrl;
  final String person;
  final bool isTrending;
  final bool isLatest;

  PostModel(
    this.imageUrl,
    this.person,
    this.isTrending,
    this.isLatest,
  );
}

class PostModelList {
  List<PostModel> _items = [
    PostModel(
      'assets/images/beach.jpg',
      'Hakuna Matata',
      true,
      false,
    ),
    PostModel(
      'assets/images/Balcklady.jpg',
      'Hakuna Matata',
      true,
      true,
    ),
    PostModel(
      'assets/images/yellowdress.jpg',
      'Hakuna Matata',
      false,
      true,
    ),
    PostModel(
      'assets/images/halfphoto.jpg',
      'Hakuna Matata',
      true,
      true,
    ),
    PostModel(
      'assets/images/fancydress.jpg',
      'Hakuna Matata',
      true,
      true,
    ),
  ];

  List<PostModel> get items {
    return [..._items];
  }

  List<PostModel> get trendingItems {
    var tempItems = _items.where((element) => element.isTrending);
    return [...tempItems]; 
  }

  List<PostModel> get latestItems {
    var tempItems = _items.where((element) => element.isLatest);
    return [...tempItems]; 
  }
}