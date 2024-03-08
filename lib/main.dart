import 'package:flutter/material.dart';
import 'package:flutter_app_news_c10_fri/home/category/category_details.dart';
import 'package:flutter_app_news_c10_fri/home/home_screen.dart';
import 'package:flutter_app_news_c10_fri/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: CategoryDetails.routeName,
      routes: {
        CategoryDetails.routeName: (context) => HomeScreen(),
      },
      theme: MyTheme.lightTheme,
    );
  }
}
