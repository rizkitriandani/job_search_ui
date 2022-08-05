import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../gen/assets.gen.dart';
import '../../../core/themes/themes.dart';
import '../../../core/values/size.dart';
import '../../../data/enums/enums.dart';
import '../../../global_widgets/rounded_icon_button.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: const [
          HomeHeader(),
          SizedBox(
            height: 28,
          ),
          ListRecommendedJobs(),
          SizedBox(
            height: 24,
          ),
          ListNearbyJobs()
        ],
      ),
    ));
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
          defaultHorizontalMargin, 53.0, defaultHorizontalMargin, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello,',
            style: Get.theme.textTheme.headline6!.copyWith(color: accentGrey),
          ),
          Text(
            'Jeremy!',
            style: Get.theme.textTheme.headline2!
                .copyWith(color: textColorBlack, fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              const SearchTextField(),
              const SizedBox(
                width: 14,
              ),
              RoundedIconButton(
                color: primary,
                onPressed: () {},
                icon: Image.asset(Assets.icons.icSetting.path),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        style: const TextStyle(color: Colors.white, fontSize: 16),
        readOnly: true,
        decoration: InputDecoration(
          fillColor: textFieldColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
          hintText: 'What are you looking for?',
          hintStyle: const TextStyle(color: hintTextColor),
          suffixIcon: const Icon(
            Icons.search,
            color: iconColorGrey,
          ),
        ),
      ),
    );
  }
}

class ListRecommendedJobs extends StatelessWidget {
  const ListRecommendedJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.28,
      margin: const EdgeInsets.only(left: defaultHorizontalMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recommended For You',
            style: Get.theme.textTheme.headline6,
          ),
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return RecommendedJob(
                    company: 'Google',
                    jobTitle: 'Web Developer',
                    jobType: Jobtype.fulltime,
                    location: 'Jakarta, Indonesia',
                    salary: 'Rp6.500k/mo',
                    bookMarkedThisJob: () {},
                  );
                })),
          ),
        ],
      ),
    );
  }
}

class RecommendedJob extends StatelessWidget {
  const RecommendedJob({
    Key? key,
    required this.company,
    required this.jobTitle,
    required this.salary,
    required this.location,
    required this.bookMarkedThisJob,
    required this.jobType,
  }) : super(key: key);

  final String company;
  final String jobTitle;
  final String salary;
  final String location;
  final VoidCallback bookMarkedThisJob;
  final Jobtype jobType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(right: 20),
      width: 257,
      height: 179,
      decoration: const BoxDecoration(
        color: accentWhite,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            Assets.images.imgCompany1.path,
            width: 36,
            height: 36,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(company),
          Text(
            jobTitle,
            style:
                basedFont.copyWith(fontWeight: FontWeight.w700, fontSize: 16),
          ),
          RichText(
            text: TextSpan(
                text: salary,
                children: <TextSpan>[
                  const TextSpan(
                    text: '  •  ',
                    style: TextStyle(
                      fontSize: 8,
                    ),
                  ),
                  TextSpan(
                    text: location,
                  ),
                ],
                style: Get.theme.textTheme.bodyMedium),
          ),
          // const SizedBox(
          //   height: 10,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              JobTypeChip(jobtype: jobType),
              IconButton(
                  onPressed: bookMarkedThisJob,
                  icon: const Icon(
                    Icons.bookmark_outline,
                    color: accentGrey,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

class JobTypeChip extends StatelessWidget {
  const JobTypeChip({
    Key? key,
    required this.jobtype,
  }) : super(key: key);

  final Jobtype jobtype;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      decoration: BoxDecoration(
        color: jobtype == Jobtype.fulltime ? accentGrey : accentYellow,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Text(
        jobtype == Jobtype.fulltime ? 'Full Time' : 'Part Time',
        style: basedFont.copyWith(
            color: jobtype == Jobtype.fulltime ? Colors.white : textColorBlack,fontSize: 10),
      ),
    );
  }
}

class ListNearbyJobs extends StatelessWidget {
  const ListNearbyJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          // color: Colors.red,
          ),
      height: Get.height,
      margin: const EdgeInsets.symmetric(horizontal: defaultHorizontalMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nearby Job',
            style: Get.theme.textTheme.headline6,
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.only(bottom: 150, top: 18),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return const NearbyJob();
                })),
          )
        ],
      ),
    );
  }
}

class NearbyJob extends StatelessWidget {
  const NearbyJob({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      height: 100,
      decoration: const BoxDecoration(
        color: accentWhite,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                Assets.images.imgCompany3.path,
                width: 68,
                height: 68,
              )),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('Kopi Lain Hati'),
                    SizedBox(width: 39,),
                    Text('~120 m'),
                  ],
                ),
                Text('Coffee Barista',style: Get.theme.textTheme.headline6!.copyWith(fontWeight: FontWeight.w700,fontSize: 18),),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Kopi Lain Hati'),
                    JobTypeChip(jobtype: Jobtype.parttime)
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
