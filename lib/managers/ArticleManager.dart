
import 'package:blog_app/models/Article.dart';
import 'package:blog_app/services/ArticleService.dart';

class ArticleManager{
  Stream<List<Article>> get articleListView async* {
    yield await ArticleService.browse();
  }
}