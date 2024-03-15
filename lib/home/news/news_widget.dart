import 'package:flutter/material.dart';
import 'package:flutter_app_news_c10_fri/api/api_manger.dart';
import 'package:flutter_app_news_c10_fri/home/news/news_item.dart';
import 'package:flutter_app_news_c10_fri/model/NewsResponse.dart';
import 'package:flutter_app_news_c10_fri/model/SourceResponse.dart';
import 'package:flutter_app_news_c10_fri/my_theme.dart';

class NewsWidget extends StatefulWidget {
Source source ;
NewsWidget({required this.source});

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse?>(
        future: ApiManger.getNewsBySourceId(widget.source.id??""),
        builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: MyTheme.primaryLightColor,
              ),
            );
          }else if(snapshot.hasError){
            return Column(
              children: [
                Text('Something went wrong'),
                ElevatedButton(onPressed: (){
                  ApiManger.getNewsBySourceId(widget.source.id??"");
                  setState(() {

                  });
                }, child: Text('Try again'))
              ],
            );
          }
          // server(success , error)
          if(snapshot.data?.status != 'ok'){
            return Column(
              children: [
                Text(snapshot.data!.message!),
                ElevatedButton(onPressed: (){
                  ApiManger.getNewsBySourceId(widget.source.id??"");
                  setState(() {

                  });
                }, child: Text('Try again'))
              ],
            );
          }
          var newsList = snapshot.data?.articles ?? [];
          return ListView.builder(itemBuilder: (context,index){
            return NewsItem(news: newsList[index]);
          },
          itemCount: newsList.length,);
        }
    );
  }
}
