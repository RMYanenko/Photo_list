import 'package:flutter/material.dart';
import 'package:list_img_app/models/photo_list.dart';
import 'package:list_img_app/services/services.dart';

import 'photo_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageList();
  }
}

class ImageList extends StatefulWidget {
  ImageList({Key key}) : super(key: key);

  @override
  _ImageListState createState() => _ImageListState();
}

class _ImageListState extends State<ImageList>
    with SingleTickerProviderStateMixin {
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
        title: Text(
          _loading ? 'Loading...' : 'Photo List',
          style: TextStyle(
            fontFamily: 'Lobster',
          ),
        ),
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
                  String tag = 'img' + index.toString();
                  return ListTile(
                    leading: Hero(
                      tag: tag,
                      child: new Image.network(
                        photo.urls.small,
                        fit: BoxFit.cover,
                        height: 55.0,
                        width: 55.0,
                      ),
                    ),
                    title: Text(
                      photo.user.name,
                      style: new TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18.0,
                        fontFamily: 'Lobster',
                      ),
                    ),
                    subtitle: Text(
                      photo.altDescription,
                      maxLines: 1,
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return Scaffold(
                            body: DetailPage(
                              image: photo.urls.regular,
                              tagHero: tag,
                            ),
                          );
                        }),
                      );
                    },
                  );
                },
              ),
      ),
    );
  }
}
