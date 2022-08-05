import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../gen/assets.gen.dart';
import '../../../core/themes/themes.dart';
import '../../../routes/app_pages.dart';
import '../controllers/get_started_controller.dart';

class GetStartedView extends GetView<GetStartedController> {
  const GetStartedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 44),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const Spacer(),
            Image.asset(
              Assets.images.imgGetStarted.path,
              width: Get.width * 0.78,
              height: Get.height * 0.357,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              'Searching Jobs',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'No need to worry about how hard for you to search a job.\nStart it now.',
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 141,
              height: 47,
              child: TextButton(
                onPressed: () => Get.offNamed(Routes.HOME),
                style: TextButton.styleFrom(
                    backgroundColor: primary,
                    padding:
                        const EdgeInsets.symmetric(vertical: 11, horizontal: 8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            // const Spacer(),
          ],
        ),
      ),
    ));
  }
}
