import 'package:flutter/material.dart';
import 'package:flutter_app_news_c10_fri/api/api_manger.dart';
import 'package:flutter_app_news_c10_fri/home/tabs/tab_widget.dart';
import 'package:flutter_app_news_c10_fri/model/SourceResponse.dart';
import 'package:flutter_app_news_c10_fri/model/category.dart';
import 'package:flutter_app_news_c10_fri/my_theme.dart';

class CategoryDetails extends StatefulWidget {
  static const String routeName = 'category-details';
  CategoryDM category;

  CategoryDetails({required this.category});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse?>(
        future: ApiManger.getSources(widget.category.id),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: MyTheme.primaryLightColor,
              ),
            );
          } else if (snapshot.hasError) {
            return Column(
              children: [
                Text('Something went wrong'),
                ElevatedButton(
                    onPressed: () {
                      ApiManger.getSources(widget.category.id);
                      setState(() {});
                    },
                    child: Text('Try again'))
              ],
            );
          }
          // server (success , error )
          if (snapshot.data?.status != 'ok') {
            return Column(
              children: [
                Text(snapshot.data!.message!),
                ElevatedButton(
                    onPressed: () {
                      ApiManger.getSources(widget.category.id);
                      setState(() {});
                    },
                    child: Text('Try again'))
              ],
            );
          }
          var sourcesList = snapshot.data?.sources ?? [];
          return TabWidget(sourcesList: sourcesList);
        });
  }
}
/*
500c5a4f9b244f3db92a47f436f1819e
 */
