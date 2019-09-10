import 'package:blog_app/models/Article.dart';
import 'package:flutter/material.dart';
import 'ArticleDetail.dart';
import 'managers/ArticleManager.dart';

class ArticleList extends StatefulWidget {

  @override
  _ArticleListState createState() => _ArticleListState();
}



class _ArticleListState extends State<ArticleList> {
  ArticleManager manager = ArticleManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ArticleList')
      ),
      body: StreamBuilder(
        stream: manager.articleListView,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          List<Article> articles = snapshot.data;
          return ListView.builder(
            itemCount: articles.length,
              itemBuilder: (BuildContext context, int index) {
                Article _article = articles[index];
                return Card(
                  elevation: 3.0,
                  child: ListTile(
                    title: Text(_article.title),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ArticleDetail(id: _article.id)),
                      );
                    },
                  ),
                );
              }
          );
        }
      ),
    );
  }
}