import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../bookmarked/views/bookmarked_view.dart';
import '../../home/views/home_view.dart';
import '../../profile/views/profile_view.dart';

class DashboardController extends GetxController {
  static DashboardController get to => Get.find();
  var tabIndex = 0;

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }

  final currentIndex = 0.obs;

  final pages =[
    HomeView(),
    BookmarkedView(),
    ProfileView(),
  ];

  Widget get currentPage => pages[currentIndex()];

  changePage(int index) {
    currentIndex.value = index;
    update();
  }
}
