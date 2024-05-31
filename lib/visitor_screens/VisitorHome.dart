import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_gallery/components/MuseumCard.dart';
import 'package:go_gallery/components/TopBarFb2Small.dart';
import 'package:go_gallery/visitor_screens/MuseumInfoPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class VisitorHome extends StatefulWidget {
  const VisitorHome({super.key});

  @override
  State<VisitorHome> createState() => _VisitorHomeState();
}

class _VisitorHomeState extends State<VisitorHome> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height; 
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.fromLTRB(12.0, 12, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: const TopBarFb2Small(
                        title: "Welcome",
                        upperTitle: "Begin a Dynamic Experience",
                      ),
                    ),
                    PopupMenuButton(
                      icon: Icon(Ionicons.menu_outline),
                      surfaceTintColor: Colors.white,
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: ListTile(
                            leading: Icon(
                              Ionicons.person_outline,
                              color: Color.fromRGBO(243, 179, 75, 1),
                            ),
                            title: Text(
                              "View Profile",
                              style: GoogleFonts.aBeeZee(
                                textStyle: const TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(243, 179, 75, 1), // Default color
                                ),
                              ),
                            ),
                          ),
                          value: "View Profile",
                        ),
                        PopupMenuItem(
                          child: ListTile(
                            leading: Icon(Ionicons.settings_outline,
                                color: Color.fromRGBO(243, 179, 75, 1)),
                            title: Text(
                              "Settings",
                              style: GoogleFonts.aBeeZee(
                                textStyle: const TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(243, 179, 75, 1), // Default color
                                ),
                              ),
                            ),
                          ),
                          value: "Settings",
                        ),
                        PopupMenuItem(
                          child: ListTile(
                            leading: Icon(Ionicons.log_out_outline,
                                color: Color.fromRGBO(243, 179, 75, 1)),
                            title: Text(
                              "Sign Out",
                              style: GoogleFonts.aBeeZee(
                                textStyle: const TextStyle(
                                  fontSize: 15.5,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(243, 179, 75, 1), // Default color
                                ),
                              ),
                            ),
                          ),
                          value: "Sign Out",
                        ),
                      ],
                      onSelected: (dynamic value) {
                        setState(() {});
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Text("Featured Museums",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("See All",
                          style: GoogleFonts.aBeeZee(
                              color: Color.fromRGBO(3, 201, 169, 0.7),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200, // Fixed height for the first ListView
                  child: ListView.separated(
                    itemCount: 5,
                    padding: EdgeInsets.only(right: 12.0),
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) {
                      return MuseumCard(
                          width: MediaQuery.of(context).size.width * 0.45,
                          imgUrl:
                              "https://profilemagazine.com/wp-content/uploads/2020/04/Ajmere-Dale-Square-thumbnail.jpg",
                          title: "Bellevue Arts Museum",
                          subtitle: "31st Ave. 98005",
                          color: Colors.orange,
                          onTapFunction: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MuseumInfoPage()));
                          });
                    },
                  ),
                ),

                SizedBox(height: screenHeight * 0.05),
                Row(
                  children: [
                    Text("Other Museums",
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.bold)),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("See All",
                          style: GoogleFonts.aBeeZee(
                              color: Color.fromRGBO(3, 201, 169, 0.7),
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200, // Fixed height for the second ListView
                  child: ListView.separated(
                    padding: EdgeInsets.only(right: 12.0),
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    separatorBuilder: (context, index) => SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) {
                      return MuseumCard(
                          width: MediaQuery.of(context).size.width * 0.45,
                          imgUrl:
                              "https://profilemagazine.com/wp-content/uploads/2020/04/Ajmere-Dale-Square-thumbnail.jpg",
                          title: "Bellevue Arts Museum",
                          subtitle: "31st Ave. 98005",
                          color: Colors.orange,
                          onTapFunction: () {});
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
