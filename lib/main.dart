import 'package:flutter/material.dart';
import 'package:list_img_app/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Image',
      theme: ThemeData(
        accentColor: Color(0xFF121212),
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ImageList(),
    );
  }
}
