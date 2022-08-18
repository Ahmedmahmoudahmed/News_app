import 'package:flutter/material.dart';
import 'views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Home(),
    );
  }
}


// class NewsCloud extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'News Cloud',
//       home: Scaffold(
//         // body: Center(
//         //     child: GestureDetector(
//         //       onTap: ()async
//         //       {
//         //         NewsAPI newsAPI=NewsAPI();
//         //         var articles=await newsAPI.fetchArticlesByCategory('sports');
//         //         for(var article in articles){
//         //           print(article.title);
//         //         }
//         //         },
//         //       child: Container(
//         //         child: Text('Fetch Data'),
//         //       ),
//         //     ),
//         //
//         //
//         // ),
//
//
//         ),
//       );
//   }
// }

