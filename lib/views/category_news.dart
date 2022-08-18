import 'package:flutter/material.dart';
import 'package:news_cloud/helper/news.dart';
import 'package:news_cloud/models/article_model.dart';

import 'home.dart';

class CategoryNews extends StatefulWidget {
  final String categoryX;
  CategoryNews({this.categoryX});
  @override
  _CategoryNewsState createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ArticleModel> articles = List<ArticleModel>();
  bool _loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategoryNews();
  }

  getCategoryNews() async {
    CategoryNewsClass newsClass = CategoryNewsClass();
    await newsClass.getNews(widget.categoryX);
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Flutter'),
            Text('News', style: TextStyle(color: Colors.blue),),
          ],
        ),
        elevation: 0.0,
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.save),
            ),
          ),
        ],
      ),

      body: _loading? Center(child: Container(child: CircularProgressIndicator(),))
          :SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
            children: [
              //blogs
              Container(
                padding: EdgeInsets.only(top: 16),
                child: ListView.builder(
                    itemCount: articles.length,
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return BlogTile(
                        imageUrl: articles[index].imageUrl,
                        title: articles[index].title,
                        descreption: articles[index].descreption,
                        url: articles[index].articleUrl,
                      );
                    }
                ),
              ),
            ],
        ),
      ),
          ),
    );
  }
}

