import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopProfileSection extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String followers;
  final String following;

  TopProfileSection({
    this.name,
    this.imageUrl,
    this.followers,
    this.following,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25, bottom: 10,),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
        gradient: LinearGradient(
          colors: [Colors.purple[300], Colors.deepPurple[300]],
        ),
      ),
      child: Center(
        child: Column(
          children: <Widget>[
            Flexible(
                fit: FlexFit.tight,
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Card(
                      color: Colors.black,
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Text(followers, style: GoogleFonts.poppins(fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                              Text('followers', style: GoogleFonts.poppins(fontSize: 12,color: Colors.white
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Card(
                      elevation: 2,
                      child: Image.asset(imageUrl, fit: BoxFit.contain,),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Card(
                      color: Colors.black,
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Text(following, style: GoogleFonts.poppins(fontSize: 15,
                              fontWeight: FontWeight.bold,color: Colors.white)),
                              Text('following', style: GoogleFonts.poppins(fontSize: 12,color: Colors.white)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              name,
              style: GoogleFonts.poppins(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
