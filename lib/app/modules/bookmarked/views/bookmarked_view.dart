import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bookmarked_controller.dart';

class BookmarkedView extends GetView<BookmarkedController> {
  const BookmarkedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookmarkedView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BookmarkedView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
