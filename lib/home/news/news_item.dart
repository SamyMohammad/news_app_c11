import 'package:flutter/material.dart';
import 'package:flutter_app_news_c10_fri/my_theme.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
             ' news.urlToImage ?? ""',
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.30,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
           ' news.author ?? ""',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: MyTheme.greyColor),
          ),
          const SizedBox(
            height: 10,
          ),
          Text('news.title' ?? "",
              style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(
            height: 10,
          ),
          Text(
           ' news.publishedAt ?? ""',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: MyTheme.greyColor),
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}
