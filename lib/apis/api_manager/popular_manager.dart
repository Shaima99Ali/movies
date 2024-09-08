import 'dart:convert';

import 'package:http/http.dart';
import 'package:movies/apis/popular.dart';

class PopularManager{
  static Future<Popular> getPopular () async {
    Response popularResponse = await get (Uri.parse("https://api.themoviedb.org/3/movie/popular"));
    if ( popularResponse.statusCode >= 200 && popularResponse.statusCode < 300 ){
      Map json = jsonDecode(popularResponse.body) as Map;
      Popular results = Popular.fromJson(json as dynamic);
      print(results.results);
      return results;
    }else {
      throw "Some thing went wrong , Please try again later" ;
    }
  }
}