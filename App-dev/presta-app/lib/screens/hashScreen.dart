import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/hashtag_post_card.dart';
import '../models/post_model.dart';

class HashtagScreen extends StatefulWidget {
  static const routeName = '/hashtag-screen';

  @override
  _HashtagScreenState createState() => _HashtagScreenState();
}

class _HashtagScreenState extends State<HashtagScreen> {
  var trendingItems = PostModelList().trendingItems;

  var latestItems = PostModelList().latestItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //height: MediaQuery.of(context).size.height,
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 40),
              Container(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 300,
                      height: 40,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter Search Query',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14),
                            borderSide: BorderSide(
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: CircleAvatar(
                        child: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.black,
                        ),
                        backgroundColor: Colors.white,
                      ),
                      onTap: () {
                        print('Searching');
                      },
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 20,),
                child: Text(
                  'Trending',
                  style: GoogleFonts.pinyonScript(fontSize: 40),
                ),
              ),
              Container(
                height: 300,
                margin: EdgeInsets.only(top: 20, bottom: 20,),
                width: MediaQuery.of(context).size.width - 10,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trendingItems.length,
                  itemBuilder: (ctx, index) => HashtagPostCard(
                    trendingItems[index].imageUrl,
                    trendingItems[index].person,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20,),
                child: Text(
                  'Latest Posts',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.pinyonScript(fontSize: 40,),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 300,
                width: MediaQuery.of(context).size.width - 10,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: latestItems.length,
                  itemBuilder: (ctx, index) => HashtagPostCard(
                    latestItems[index].imageUrl,
                    latestItems[index].person,
                  ),
                ),
              ),
            ],
          ),
        ),
    );
    
  }
}