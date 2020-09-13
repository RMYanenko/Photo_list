import 'package:flutter/material.dart';
import 'package:list_img_app/models/photo_list.dart';
import 'package:list_img_app/services/services.dart';

import 'photo_page.dart';

class ImageList extends StatefulWidget {
  ImageList({Key key}) : super(key: key);

  @override
  _ImageListState createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  List<PhotoList> _photos;
  bool _loading;

  @override
  void initState() {
    super.initState();
    _loading = true;
    Services.getPhoto().then((photos) {
      setState(() {
        _photos = photos;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_loading ? 'Loading...' : 'Photo List'),
        backgroundColor: Color(0xFF121212),
      ),
      body: Container(
        color: Colors.black12,
        child: _loading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: null == _photos ? 0 : _photos.length,
                itemBuilder: (context, index) {
                  PhotoList photo = _photos[index];
                  return ListTile(
                    leading: new Image.network(
                      photo.urls.small,
                      fit: BoxFit.cover,
                      height: 50.0,
                      width: 50.0,
                    ),
                    title: Text(photo.user.name),
                    subtitle: Text(photo.altDescription),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(photo),
                        ),
                      );
                    },
                  );
                },
              ),
      ),
    );
  }
}
