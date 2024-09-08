import 'dart:convert';

import 'package:http/http.dart';
import 'package:movies/apis/new_realeases.dart';

class NewRealeasesManager{
  static Future<NewRealeases> getRealeases () async {
    Response popularResponse = await get (Uri.parse("https://api.themoviedb.org/3/movie/upcoming"));
    if ( popularResponse.statusCode >= 200 && popularResponse.statusCode < 300 ){
      Map json = jsonDecode(popularResponse.body) as Map;
      return NewRealeases.fromJson(json as dynamic);
    }else {
      throw "Some thing went wrong , Please try again later" ;
    }
  }
}