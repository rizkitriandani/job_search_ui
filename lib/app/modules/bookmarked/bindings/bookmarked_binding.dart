import 'package:get/get.dart';

import '../controllers/bookmarked_controller.dart';

class BookmarkedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BookmarkedController>(
      () => BookmarkedController(),
    );
  }
}
