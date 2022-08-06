import 'package:flutter/material.dart';

import '../../../core/themes/themes.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  final primaryColor = const Color(0xff4338CA);
  final secondaryColor = const Color(0xff6D28D9);
  final accentColor = const Color(0xffffffff);
  final backgroundColor = const Color(0xffffffff);
  final errorColor = const Color(0xffEF4444);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(

      elevation: 20,
      child: SizedBox(
        height: 56,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconBottomBar(
                  icon: Icons.home,
                  selected: true,
                  onPressed: () {}),
              IconBottomBar(
                  icon: Icons.bookmark_outline,
                  selected: false,
                  onPressed: () {}),
              IconBottomBar(
                  icon: Icons.person_outline,
                  selected: false,
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  const IconBottomBar(
      {Key? key,
      // required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed})
      : super(key: key);
  // final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  final primaryColor = const Color(0xff4338CA);
  final accentColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          icon:
              Icon(icon, size: 32, color: selected ? primary : accentGrey),
        ),
        // Text(
        //   text,
        //   style: TextStyle(
        //       fontSize: 12,
        //       height: .1,
        //       color: selected ? accentColor : Colors.grey),
        // )
      ],
    );
  }
}
