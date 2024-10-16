import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/features/article/view/article_page.dart';
import 'package:news_app/features/home/view/homepage.dart';
import 'package:news_app/features/profile/view/profile_page.dart';

class BottomNavigationController extends GetxController {
  RxInt index = 0.obs;
  var pages = [
    Homepage(),
    ArticlePage(),
    ProfilePage(),
  ];
}
