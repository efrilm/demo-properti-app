import 'package:flutter/material.dart';
import 'package:properti1/thema.dart';

class CardIcon extends StatelessWidget {
  final IconData icon;
  final Function() onTap;
  final double height;
  final double width;
  final double iconSize;
  const CardIcon({
    Key? key,
    required this.icon,
    required this.onTap,
    this.height = 40,
    this.width = 40,
    this.iconSize = 24,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: kRedColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(radius8),
        ),
        child: Center(
          child: Icon(
            icon,
            size: iconSize,
            color: kWhiteColor,
          ),
        ),
      ),
    );
  }
}
