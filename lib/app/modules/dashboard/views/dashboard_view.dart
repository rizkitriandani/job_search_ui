import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';
import 'bottom_app_bar.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: controller,
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          body: Container(
            child: controller.currentPage,
          ),
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}
