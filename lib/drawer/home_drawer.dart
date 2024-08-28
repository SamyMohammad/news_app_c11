import 'package:flutter/material.dart';
import 'package:flutter_app_news_c10_fri/my_theme.dart';

class HomeDrawer extends StatelessWidget {
  Function onSideMenuClick;
  HomeDrawer({super.key, required this.onSideMenuClick});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.1),
          color: MyTheme.primaryLightColor,
          child: Text(
            'News App!',
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              onSideMenuClick(HomeDrawerEnum.categories);
            },
            child: Row(
              children: [
                const Icon(Icons.list),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Categories',
                  style: Theme.of(context).textTheme.titleMedium,
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: () {
              onSideMenuClick(HomeDrawerEnum.settings);
            },
            child: Row(
              children: [
                const Icon(Icons.settings),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Settings',
                  style: Theme.of(context).textTheme.titleMedium,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

enum HomeDrawerEnum { categories, settings }
