import 'dart:convert';
import 'package:apidemo/model.dart';
import 'package:http/http.dart' as http;


class NewsProvider {
  var url = "http://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=46046f114d2a4c05bc6ca80d22185772";
  Future<News> getNews() async {
    final res = await http.get(url);
    if (res.statusCode == 200){
      return News.fromJson(jsonDecode(res.body));
    }
    return null;
  }
}