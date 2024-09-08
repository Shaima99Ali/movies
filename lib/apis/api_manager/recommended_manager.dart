import 'dart:convert';

import 'package:http/http.dart';
import 'package:movies/apis/recommended.dart';


class RecommendedManager{
  static Future<Recommended> getRecommended () async {
    Response popularResponse = await get (Uri.parse("https://api.themoviedb.org/3/movie/top_rated"));
    if ( popularResponse.statusCode >= 200 && popularResponse.statusCode < 300 ){
      Map json = jsonDecode(popularResponse.body) as Map;
      return Recommended.fromJson(json as dynamic);
    }else {
      throw "Some thing went wrong , Please try again later" ;
    }
  }
}