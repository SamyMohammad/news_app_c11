import 'package:flutter/material.dart';
import 'package:flutter_app_news_c10_fri/model/SourceResponse.dart';
import 'package:flutter_app_news_c10_fri/my_theme.dart';

class TabItem extends StatelessWidget {
  Source source ;
  bool isSelected ;
  TabItem({required this.source,required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: MyTheme.primaryLightColor,
          width: 3
        ),
        color: isSelected ? MyTheme.primaryLightColor : Colors.transparent
      ),
      child: Text(source.name ?? '',
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
        color: isSelected ? MyTheme.whiteColor : MyTheme.primaryLightColor
      ),),
    );
  }
}
