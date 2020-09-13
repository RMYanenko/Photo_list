import 'package:http/http.dart' as http;
import 'package:list_img_app/models/photo_list.dart';

class Services {
  static String _apiKey = 'PYgGPdsGZdH5bu9kLJQyb70UxAuiBlh6zOS6CHXFNRU';
  static String url = 'https://api.unsplash.com/photos/?client_id=$_apiKey';

  static Future<List<PhotoList>> getPhoto() async {
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final List<PhotoList> photos = photoListFromJson(response.body);
        return photos;
      } else {
        return List<PhotoList>();
      }
    } catch (e) {
      return List<PhotoList>();
    }
  }
}
