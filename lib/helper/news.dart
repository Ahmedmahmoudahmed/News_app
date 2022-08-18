
import 'dart:convert';
import 'dart:ffi';

import 'package:news_cloud/models/article_model.dart';
import 'package:http/http.dart' as http;

class News{
  List<ArticleModel> news=[];

  Future<void>getNews()async{
    var response=await http.get(Uri.https('newsapi.org','/v2/top-headlines',{'country':'eg','apiKey':'0fc60c7c268d4aed965fbcbf33bc5970'}));
    var jsonData=jsonDecode(response.body);
    if(jsonData['status']=='ok'){
      jsonData['articles'].forEach((element){
        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel=ArticleModel(
            title: element['title'],
            author: element['author'],
            descreption: element['description'],
            articleUrl: element['url'],
            imageUrl: element['urlToImage'],
            content: element['content'],
          );
          news.add(articleModel);
        }
      });
    }
  }


}

class CategoryNewsClass{
  List<ArticleModel> news=[];

  Future<Void>getNews(String category)async{
    var response=await http.get(Uri.https('newsapi.org','/v2/top-headlines',{'category':category,'country':'eg','apiKey':'0fc60c7c268d4aed965fbcbf33bc5970'}));
    var jsonData=jsonDecode(response.body);
    if(jsonData['status']=='ok'){
      jsonData['articles'].forEach((element){
        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel=ArticleModel(
            title: element['title'],
            author: element['author'],
            descreption: element['description'],
            articleUrl: element['url'],
            imageUrl: element['urlToImage'],
            content: element['content'],
          );
          news.add(articleModel);
        }
      });
    }
  }


}