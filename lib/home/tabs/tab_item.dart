import 'package:flutter/material.dart';
import 'package:flutter_app_news_c10_fri/my_theme.dart';

class TabItem extends StatelessWidget {
  final bool isSelected = false;
  const TabItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: MyTheme.primaryLightColor, width: 3),
          color: isSelected ? MyTheme.primaryLightColor : Colors.transparent),
      child: Text(
        'source.name',
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
            color: isSelected ? MyTheme.whiteColor : MyTheme.primaryLightColor),
      ),
    );
  }
}
