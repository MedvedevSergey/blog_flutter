import 'dart:convert';

import 'package:blog_app/models/Article.dart';
import 'package:http/http.dart' as http;

class ArticleService{

  static Future browse() async {
    http.Response response = await http.get('http://www.mocky.io/v2/5d78010c3200003d479240fc');
    var content = utf8.decode(response.bodyBytes);
    List collection = json.decode(content)['results'];
    List<Article> _articles = collection.map((json) => Article.fromJson(json)).toList();

    return _articles;
  }

}