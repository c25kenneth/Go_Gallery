import 'package:flutter/material.dart';
import 'package:go_gallery/components/ExhibitionCard.dart';

class MuseumExhibitions extends StatefulWidget {
  const MuseumExhibitions({super.key});

  @override
  State<MuseumExhibitions> createState() => _MuseumExhibitionsState();
}

class _MuseumExhibitionsState extends State<MuseumExhibitions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ExhibitionCard(),
          ExhibitionCard(),
          ExhibitionCard(),
        ],
      ),
    );
  }
}