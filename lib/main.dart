import 'package:flutter/material.dart';
import 'package:flutter_app_news_c10_fri/home/home_screen.dart';
import 'package:flutter_app_news_c10_fri/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
      theme: MyTheme.lightTheme,
    );
  }
}
