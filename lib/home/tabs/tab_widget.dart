import 'package:flutter/material.dart';
import 'package:flutter_app_news_c10_fri/home/news/news_widget.dart';
import 'package:flutter_app_news_c10_fri/home/tabs/tab_item.dart';

class TabWidget extends StatefulWidget {
  const TabWidget({
    super.key,
  });

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              isScrollable: true,
              indicatorColor: Colors.transparent,
              tabs: [Container(), Container()]
                  .map(
                    (source) => const TabItem(),
                  )
                  .toList()),
          const Expanded(child: NewsWidget())
        ],
      ),
    );
  }
}
