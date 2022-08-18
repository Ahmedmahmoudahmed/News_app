import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_cloud/helper/data.dart';
import 'package:news_cloud/helper/news.dart';
import 'package:news_cloud/models/article_model.dart';
import 'package:news_cloud/models/category_model.dart';
import 'package:news_cloud/views/article_view.dart';
import 'package:news_cloud/views/category_news.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories=List<CategoryModel>();
  List<ArticleModel> articles=List<ArticleModel>();
  bool _loading=true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories=getCategories();
    getNews();
  }
  getNews()async{
    News newsClass=News();
    await newsClass.getNews();
    articles=newsClass.news;
    setState(() {
      _loading=false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Flutter'),
            Text('News',style: TextStyle(color: Colors.blue),),
          ],
        ),
        elevation: 0.0,
      ),

      body:_loading? Center(child: Container(child: CircularProgressIndicator(),))
          :SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              //categories
              Container(
                height: 70,
                child: ListView.builder(
                    itemCount: categories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return CategoryTile(
                        categoryName: categories[index].categoryName,
                        imageUrl: categories[index].imagrUrl,
                      );
                    }
                ),
              ),

              //blogs
              Container(
                padding: EdgeInsets.only(top: 16),
                child: ListView.builder(
                    itemCount: articles.length,
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context,index){
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



class CategoryTile extends StatelessWidget {
  final String imageUrl,categoryName;

  CategoryTile({this.imageUrl,this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,MaterialPageRoute(
            builder: (context)=>CategoryNews(
              categoryX: categoryName.toLowerCase(),
            ),
        ));
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(imageUrl: imageUrl,width: 120,height: 60,fit: BoxFit.cover,)
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(12),
                color: Colors.black26,
              ),
              width: 120,height: 60,
              child: Text(categoryName,style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
            ),

          ],
        ),
      ),
    );
  }
}



class BlogTile extends StatelessWidget {
  final String imageUrl,title,descreption,url;
  BlogTile({@required this.imageUrl,@required this.title,@required this.descreption,@required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context)=>ArticleView(
            blogUrl: url,
          ),
        ));
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(imageUrl)
            ),
            SizedBox(height: 5,),
            Text(title,style: TextStyle(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.w500),),
            SizedBox(height: 5,),
            Text(descreption,style: TextStyle(color: Colors.black54),),
          ],
        ),
      ),
    );
  }
}
