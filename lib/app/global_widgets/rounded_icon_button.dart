import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton(
    {
    Key? key,
    required this.icon,
    required this.onPressed, required this.color,
  }) : super(key: key);
  final Widget icon;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: icon,
        ));
  }
}
