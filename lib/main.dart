import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:job_search_ui/app/core/themes/themes.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: light,
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: Routes.GET_STARTED,
      getPages: AppPages.routes,
    ),
  );
}
