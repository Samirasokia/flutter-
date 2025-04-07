
import 'package:dio/dio.dart';
//import 'package:nav_bar_and_splash_screen/model/news_model.dart';
import 'package:news_app/model/news_model.dart';

class NewsService {
  static String APIKEY = "9be79bc307cd424a96d9d2e6ea0bb14f";
  late Response response;
  String baseurl =
      "https://newsapi.org/v2/everything?q=tesla&from=2025-04-05&sortBy=publishedAt&apiKey=$APIKEY";
  Dio dio = Dio();

  Future<List<NewsModel>> getNews() async {
    try {
      response = await dio.get(baseurl);
      List<NewsModel> news = [];

      for (var i = 0; i < response.data['articles'].length; i++) {
        news.add(NewsModel.fromMap(response.data['articles'][i]));
      }
      return news;
      
    } catch (e) {
      print(e);
      return [];
    }
  }
}
