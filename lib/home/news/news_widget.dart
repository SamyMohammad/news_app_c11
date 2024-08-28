import 'package:flutter/material.dart';
import 'package:flutter_app_news_c10_fri/home/news/news_item.dart';

class NewsWidget extends StatefulWidget {
  const NewsWidget({
    super.key,
  });

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const NewsItem();
      },
      itemCount: 10,
    );
  }
}
