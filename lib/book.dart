import 'dart:convert';
import 'package:http/http.dart' as http;

class BookModel {
  static Future  Fetch() async{
    Uri url = Uri.parse("https://www.googleapis.com/books/v1/volumes?q=quilting&maxResults=3");
    var response = await http.get(url);

    var data =json.decode(response.body);

    
    return data['items'];
  }
}