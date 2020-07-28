import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/top_profile_section.dart';
import '../widgets/profile_picture_grid.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profile-screen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var name = 'Pierriehughman';
  final controller = TextEditingController();

  void _changeName() {
    setState(() {
      name = controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //height: MediaQuery.of(context).size.height,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TopProfileSection(
                name: 'Hakuna Matata',
                imageUrl: 'assets/images/dpgirl.jpg',
                followers: '10K',
                following: '200',
              ), //pass name here along with other properties
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 15
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(width: 1.0, color: Colors.black)),
                  child: FlatButton(
                    padding: EdgeInsets.all(10),
                    child: Text('Edit Profile', style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
                    onPressed: () {
                      return Scaffold.of(context).showSnackBar(SnackBar(
                        content: TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter New Name',
                          ),
                          controller: controller,
                        ),
                        action: SnackBarAction(
                          label: 'Save',
                          onPressed: _changeName,
                        ),
                      ));
                    },
                  ),
                ),
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.61,
                  child: ProfilePictureGrid()),
            ],
          ),
        ),
      ),
    );
  }
}