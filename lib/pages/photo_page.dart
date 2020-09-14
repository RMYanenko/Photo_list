
import 'package:flutter/material.dart';



class DetailPage extends StatefulWidget {
  final String image;
  final String tagHero;

  DetailPage({this.image, this.tagHero});
  // final PhotoList photo;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: GestureDetector(
        child: Hero(
            tag: widget.tagHero,
            child: Center(child: Image.network(widget.image))),
      ),
    );
  }
}
