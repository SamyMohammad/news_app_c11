import 'dart:convert';
import 'package:flutter_app_news_c10_fri/api/api_constatnts.dart';
import 'package:flutter_app_news_c10_fri/model/NewsResponse.dart';
import 'package:flutter_app_news_c10_fri/model/SourceResponse.dart';
import 'package:http/http.dart' as http;
class ApiManger{
  /*
  https://newsapi.org/v2/top-headlines/sources?apiKey=500c5a4f9b244f3db92a47f436f1819e
   */
  static Future<SourceResponse?> getSources(String categoryId)async{
    Uri url = Uri.https(ApiConstants.baseUrl,ApiConstants.sourcesApi,
    {
      'apiKey' : '500c5a4f9b244f3db92a47f436f1819e',
      'category' : categoryId
    });
    try{
      var response = await http.get(url);
      var responseBody = response.body ;  /// String
      var json = jsonDecode(responseBody);  // string => json
      return SourceResponse.fromJson(json);
    }catch(e){
      throw e ;
    }

  }

  /*
  https://newsapi.org/v2/everything?q=bitcoin&apiKey=500c5a4f9b244f3db92a47f436f1819e
   */

  static Future<NewsResponse?> getNewsBySourceId(String sourceId)async{
    Uri url = Uri.https(ApiConstants.baseUrl,ApiConstants.newsApi,
    {
      'apiKey' : '500c5a4f9b244f3db92a47f436f1819e',
      'sources' : sourceId
    });
    try{
      var response = await http.get(url);
      var responseBody = response.body ; // string
      var json = jsonDecode(responseBody); // json
      return NewsResponse.fromJson(json);
    }catch(e){
      throw e ;
    }

  }
}