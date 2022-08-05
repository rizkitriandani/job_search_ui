import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../gen/assets.gen.dart';
import '../../../global_widgets/rounded_button.dart';
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

            RoundedButton(
              label: 'Get Started',
              onPressed: () => Get.offNamed(Routes.HOME),
            )
            // const Spacer(),
          ],
        ),
      ),
    ));
  }
}
