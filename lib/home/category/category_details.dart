import 'package:flutter/material.dart';
import 'package:flutter_app_news_c10_fri/home/tabs/tab_widget.dart';
import 'package:flutter_app_news_c10_fri/model/category.dart';

class CategoryDetails extends StatefulWidget {
  static const String routeName = 'category-details';
  CategoryDM category;

  CategoryDetails({super.key, required this.category});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  @override
  Widget build(BuildContext context) {
    return const TabWidget();
  }
}
