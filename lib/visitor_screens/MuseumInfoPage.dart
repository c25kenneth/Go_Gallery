import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_gallery/visitor_screens/MuseumExhibitions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:readmore/readmore.dart';

class MuseumInfoPage extends StatefulWidget {
  const MuseumInfoPage({super.key});

  @override
  State<MuseumInfoPage> createState() => _MuseumInfoPageState();
}

class _MuseumInfoPageState extends State<MuseumInfoPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: screenHeight * 0.45,
            leading: Padding(
              padding: const EdgeInsets.all(8.0), // Adjust padding as needed
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Background color
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Color.fromRGBO(236, 183, 102, 1.0), // Icon color
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left: 16.0, bottom: 16.0),
              background: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5GLLSPCs_6jxoKAx4jLXeZ97c96Zh5mdkF6-r1dPgVA&s',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text("Bellevue Art Museum",
                            style: GoogleFonts.aBeeZee(
                                color: Colors.blueGrey[900],
                                fontSize: 26,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.5),
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(
                                Ionicons.star,
                                size: 22,
                                color: Color.fromRGBO(236, 183, 102, 1.0),
                              ),
                            ),
                            TextSpan(
                                text: " 4.7",
                                style: GoogleFonts.aBeeZee(
                                  color: Colors.grey[500],
                                  fontSize: 18,
                                )),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Flexible(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Ionicons.location,
                                  size: 22,
                                  color: Color.fromRGBO(236, 183, 102, 1.0),
                                ),
                              ),
                              TextSpan(
                                  text: " 10240 NE 20th Pl.",
                                  style: GoogleFonts.aBeeZee(
                                    color: Colors.grey[500],
                                    fontSize: 18,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.0, bottom: 25.0),
                    child: ReadMoreText(
                      "The Bellevue Arts Museum (BAM), located in Bellevue, Washington, is a distinguished institution dedicated to contemporary art, craft, and design. Founded in 1975, it has evolved from an art fair into a full-fledged museum housed in a striking building designed by renowned architect Steven Holl, which opened in 2001. Unlike traditional museums, BAM does not have a permanent collection, allowing it to host a dynamic rotation of exhibitions that highlight both regional and international artists. These exhibitions cover a broad spectrum of contemporary creative practices, fostering innovation and dialogue within the arts community. BAM is also known for its robust educational programs, including workshops, lectures, and tours, aimed at engaging audiences of all ages. The museum plays a vital role in the local community, hosting events that promote public participation and support local artists. With its unique architectural design and commitment to showcasing cutting-edge art, the Bellevue Arts Museum is a cultural cornerstone in the Pacific Northwest.",
                      trimLines: 3,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: " Show More ",
                      trimExpandedText: " Show Less ",
                      lessStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(3, 201, 169, 0.7),
                      ),
                      moreStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(3, 201, 169, 0.7),
                      ),
                      style: TextStyle(
                        fontSize: 16,
                        height: 2,
                      ),
                    ),
                  ),

                  Container(
                  width: screenWidth * 0.90,
                  margin: EdgeInsets.only(bottom: 50.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MuseumExhibitions()));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromRGBO(255, 191, 99, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 24.0, vertical: 15.0),
                      child: Text(
                        "Enhance Visit",
                        style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
