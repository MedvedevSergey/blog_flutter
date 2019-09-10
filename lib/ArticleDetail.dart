import 'package:flutter/material.dart';

class ArticleDetail extends StatefulWidget {

  const ArticleDetail({ Key key, this.id}) : super(key: key);

  final int id;


  @override
  _ArticleDetailState createState() => _ArticleDetailState();
}

class _ArticleDetailState extends State<ArticleDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Text(widget.id.toString()),
        ),
      ),
    );
  }
}
