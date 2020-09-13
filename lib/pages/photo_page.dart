import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:list_img_app/models/photo_list.dart';

class DetailPage extends StatefulWidget {
  DetailPage(this.photo);
  final PhotoList photo;

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: GestureDetector(
        child: Center(
          child: ZoomIn(child: Image.network(widget.photo.urls.regular)),
        ),
      ),
    );
  }
}
