
class ArticleModel
{
  final String author;
  final String title;
  final String descreption;
  final String imageUrl;
  final String articleUrl;
  final String content;

  ArticleModel({this.author,this.content,this.title, this.descreption, this.imageUrl, this.articleUrl,});

// factory ArticleModel.fromJson(Map<String,dynamic> jsonData)
// {
//   return ArticleModel(
//     author: jsonData['author'],
//     content: jsonData['content'],
//     title: jsonData['title'],
//     descreption: jsonData['description'],
//     imageUrl: jsonData['urlToImage'],
//     articleUrl: jsonData['url'],
//   );
// }
}